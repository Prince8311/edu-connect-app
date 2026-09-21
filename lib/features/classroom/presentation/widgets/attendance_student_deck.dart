import 'dart:math' as math;

import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

const _absent = Color(0xFFFF929F);
const _present = Color(0xFF7DE1BA);
const _pending = Color(0xFFFFD775);

void showAttendanceStudentDeck(
  BuildContext context,
  ClassroomModel classroom, {
  required List<ClassroomStudentModel> students,
  Map<String, bool>? draft,
}) {
  showGeneralDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'Close attendance',
    barrierColor: const Color(0xF5101728),
    transitionDuration: const Duration(milliseconds: 350),
    pageBuilder: (context, animation, secondaryAnimation) => _StudentDeck(
        classroom: classroom, students: students, draft: draft ?? {}),
    transitionBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

class _StudentDeck extends StatefulWidget {
  const _StudentDeck(
      {required this.classroom, required this.students, required this.draft});
  final ClassroomModel classroom;
  final List<ClassroomStudentModel> students;
  final Map<String, bool> draft;

  @override
  State<_StudentDeck> createState() => _StudentDeckState();
}

class _StudentDeckState extends State<_StudentDeck>
    with SingleTickerProviderStateMixin {
  late final AnimationController _flight;
  final List<String> _history = [];
  int _selected = 0;
  double _drag = 0;
  int? _flying;
  bool _destination = false;

  List<ClassroomStudentModel> get _students => widget.students;
  String _key(int i) {
    final student = _students[i];
    if (student.studentId != null) return 'id:${student.studentId}';
    final enrollment = student.enrollmentId?.trim() ?? '';
    return enrollment.isEmpty ? 'roster:$i' : 'enrollment:$enrollment';
  }

  List<int> _group(bool? status) => [
        for (var i = 0; i < _students.length; i++)
          if (widget.draft[_key(i)] == status) i,
      ];
  List<int> get _unmarked => _group(null);
  bool get _busy => _flying != null;

  @override
  void initState() {
    super.initState();
    _flight = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 650));
  }

  @override
  void dispose() {
    _flight.dispose();
    widget.draft.clear();
    super.dispose();
  }

  void _select(int index) {
    if (_busy || index < 0 || index >= _unmarked.length) return;
    setState(() {
      _selected = index;
      _drag = 0;
    });
  }

  Future<void> _mark(bool present) async {
    final pending = _unmarked;
    if (_busy || pending.isEmpty) return;
    final student = pending[_selected];
    setState(() {
      _flying = student;
      _destination = present;
    });
    // Update the draft immediately so the counts reflect the moving card.
    widget.draft[_key(student)] = present;
    _history.add(_key(student));
    _flight.duration = MediaQuery.disableAnimationsOf(context)
        ? Duration.zero
        : const Duration(milliseconds: 650);
    await _flight.forward(from: 0);
    if (!mounted) return;
    setState(() {
      _flying = null;
      _drag = 0;
      _selected = math.min(_selected, math.max(0, _unmarked.length - 1));
    });
    _flight.reset();
  }

  void _restore(int index) {
    if (_busy) return;
    setState(() {
      widget.draft.remove(_key(index));
      _history.removeWhere((key) => key == _key(index));
      _selected = _unmarked.indexOf(index);
      _drag = 0;
    });
  }

  void _undo() {
    if (_busy || _history.isEmpty) return;
    final key = _history.last;
    final index = List.generate(_students.length, (i) => i)
        .indexWhere((i) => _key(i) == key);
    if (index >= 0) _restore(index);
  }

  void _review(bool? status) {
    if (_busy) return;
    final indices = _group(status);
    final title = status == null
        ? 'Not marked'
        : status
            ? 'Present'
            : 'Absent';
    final accent = status == null
        ? const Color(0xFF9B6B12)
        : status
            ? const Color(0xFF168364)
            : const Color(0xFFC24C61);
    final icon = status == null
        ? Icons.layers_outlined
        : status
            ? Icons.check_circle_outline_rounded
            : Icons.person_off_outlined;
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: const Color(0xFFF6F8FC),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      clipBehavior: Clip.antiAlias,
      builder: (sheetContext) => SafeArea(
        top: false,
        child: DefaultTextStyle(
          style: const TextStyle(
              fontFamily: FontFamily.poppins,
              color: Color(0xFF172B4D),
              fontSize: 14),
          child: SizedBox(
            height: MediaQuery.sizeOf(sheetContext).height * 0.65,
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 4, 12, 18),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: accent.withAlpha(20),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Icon(icon, color: accent, size: 26)),
                              const SizedBox(width: 14),
                              Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                    Text(title,
                                        style: const TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600)),
                                    const SizedBox(height: 3),
                                    Text(
                                        '${indices.length} ${indices.length == 1 ? 'student' : 'students'}',
                                        style: TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            color: accent,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500)),
                                  ])),
                              IconButton(
                                  tooltip: 'Close pile',
                                  onPressed: () =>
                                      Navigator.of(sheetContext).pop(),
                                  icon: const Icon(Icons.close_rounded,
                                      color: Color(0xFF748198))),
                            ]),
                            if (indices.isNotEmpty) ...[
                              const SizedBox(height: 18),
                              Text(
                                  status == null
                                      ? 'Choose a student to mark next.'
                                      : 'Tap a student to return their card to Not marked.',
                                  style: const TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: 12,
                                      height: 1.5,
                                      color: Color(0xFF748198))),
                            ],
                          ]))),
              if (indices.isEmpty)
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                        child: Semantics(
                            label: 'No students in this pile',
                            child: Lottie.asset(
                              Assets.animations.searchNotFound,
                              width: 220,
                              height: 220,
                              animate:
                                  !MediaQuery.disableAnimationsOf(sheetContext),
                            ))))
              else
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                  sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, position) {
                    final index = indices[position];
                    final student = _students[index];
                    final name = student.name?.trim();
                    final displayName =
                        name == null || name.isEmpty ? 'Student' : name;
                    final initials = displayName
                        .split(RegExp(r'\s+'))
                        .take(2)
                        .map((word) => word.characters.first)
                        .join()
                        .toUpperCase();
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Material(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: const BorderSide(color: Color(0xFFE6ECF4))),
                          clipBehavior: Clip.antiAlias,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 8),
                            leading: CircleAvatar(
                                backgroundColor: accent.withAlpha(20),
                                child: Text(initials,
                                    style: TextStyle(
                                        fontFamily: FontFamily.poppins,
                                        color: accent,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600))),
                            title: Text(displayName,
                                style: const TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF172B4D))),
                            subtitle: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                    student.enrollmentId ?? 'Not assigned',
                                    style: const TextStyle(
                                        fontFamily: FontFamily.poppins,
                                        fontSize: 12,
                                        color: Color(0xFF748198)))),
                            trailing: Icon(
                                status == null
                                    ? Icons.arrow_forward_rounded
                                    : Icons.undo_rounded,
                                size: 20,
                                color: accent),
                            onTap: () {
                              Navigator.of(sheetContext).pop();
                              if (status == null) {
                                _select(_unmarked.indexOf(index));
                              } else {
                                _restore(index);
                              }
                            },
                          ),
                        ));
                  }, childCount: indices.length)),
                ),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pending = _unmarked;
    final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
    final cardHeight = 232.0 + math.max(0.0, scale - 1) * 110;
    return Material(
      type: MaterialType.transparency,
      textStyle: const TextStyle(
          fontFamily: FontFamily.poppins, color: Colors.white, fontSize: 14),
      child: SafeArea(child: LayoutBuilder(builder: (context, viewport) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: viewport.maxHeight),
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 12, 0),
                child: Row(children: [
                  const Icon(Icons.fact_check_outlined, color: _pending),
                  const SizedBox(width: 10),
                  const Expanded(child: Text('Attendance')),
                  IconButton(
                      tooltip: 'Undo last mark',
                      onPressed: _history.isEmpty || _busy ? null : _undo,
                      icon: Icon(Icons.undo_rounded,
                          color: _history.isEmpty || _busy
                              ? Colors.white24
                              : Colors.white)),
                  IconButton(
                      tooltip: 'Close attendance',
                      onPressed: () => Navigator.of(context).pop(),
                      icon:
                          const Icon(Icons.close_rounded, color: Colors.white)),
                ])),
            const Text('Meet your class',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 26,
                    fontWeight: FontWeight.w600)),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 0),
                child: Text(
                    'Class ${widget.classroom.className ?? '-'}${widget.classroom.section ?? ''} · ${widget.classroom.subject ?? ''}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: Colors.white70))),
            const Padding(
                padding: EdgeInsets.fromLTRB(20, 8, 20, 0),
                child: Text('← Absent     Swipe a card     Present →',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontFamily.poppins,
                        color: _pending,
                        fontSize: 12))),
            Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 0),
                child: Semantics(
                    liveRegion: true,
                    child: Text(
                        '${_students.length - pending.length} of ${_students.length} marked · Draft',
                        style: const TextStyle(
                            fontFamily: FontFamily.poppins,
                            fontSize: 11,
                            color: Colors.white70)))),
            SizedBox(
              height: math.max(
                  viewport.maxHeight - (162 * scale), cardHeight + 265 * scale),
              child: LayoutBuilder(builder: (context, stage) {
                final width = math.min(180.0, stage.maxWidth * 0.52);
                final center = Offset(stage.maxWidth / 2, 28 + cardHeight / 2);
                Widget card(int index, {bool selected = true}) => SizedBox(
                    width: width,
                    height: cardHeight,
                    child: _StudentCard(
                        student: _students[index],
                        selected: selected,
                        position: index + 1));
                final active = pending.isEmpty
                    ? null
                    : pending[math.min(_selected, pending.length - 1)];
                final visible = pending
                    .skip(math.min(_selected, math.max(0, pending.length - 1)))
                    .take(3)
                    .toList();
                return Stack(children: [
                  if (active == null && !_busy)
                    Positioned(
                        top: 45,
                        left: 24,
                        right: 24,
                        child: Column(children: [
                          Icon(
                              _students.isEmpty
                                  ? Icons.people_outline
                                  : Icons.task_alt_rounded,
                              size: 58,
                              color: _present),
                          const SizedBox(height: 16),
                          Text(
                              _students.isEmpty
                                  ? 'No students yet'
                                  : 'Everyone is marked',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(height: 8),
                          Text(
                              _students.isEmpty
                                  ? 'Students will appear here when they join this classroom.'
                                  : 'Tap a pile to review or change a mark.',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  color: Colors.white70)),
                          if (_students.isNotEmpty) ...[
                            const SizedBox(height: 24),
                            FilledButton.icon(
                              onPressed: () => showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Attendance summary'),
                                  content: Text(
                                      'Present: ${_group(true).length}\n'
                                      'Absent: ${_group(false).length}\n\n'
                                      'Attendance is still a draft. Submission is not connected yet.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              ),
                              style: FilledButton.styleFrom(
                                backgroundColor: _present,
                                foregroundColor: const Color(0xFF172B4D),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 14),
                                textStyle: const TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontWeight: FontWeight.w600),
                              ),
                              icon: const Icon(
                                Icons.check_rounded,
                                color: const Color(0xFF172B4D),
                              ),
                              label: const Text('Submit'),
                            ),
                          ],
                        ])),
                  for (var depth = visible.length - 1; depth >= 0; depth--)
                    Positioned(
                        left: center.dx - width / 2,
                        top: 28,
                        child: Transform.translate(
                            offset: Offset(
                                depth == 0 && !_busy ? _drag : depth * 22.0,
                                depth * 8.0),
                            child: Transform.rotate(
                                angle: depth == 0 && !_busy
                                    ? _drag / 750
                                    : depth * 0.08,
                                child: Transform.scale(
                                    scale: 1 - depth * 0.045,
                                    child: GestureDetector(
                                      key: depth == 0
                                          ? const ValueKey(
                                              'attendance-active-card')
                                          : null,
                                      onTap: _busy
                                          ? null
                                          : () => _select(
                                              pending.indexOf(visible[depth])),
                                      onHorizontalDragUpdate: depth != 0 ||
                                              _busy
                                          ? null
                                          : (details) => setState(() => _drag =
                                              (_drag + details.delta.dx).clamp(
                                                  -stage.maxWidth * 0.65,
                                                  stage.maxWidth * 0.65)),
                                      onHorizontalDragCancel: () =>
                                          setState(() => _drag = 0),
                                      onHorizontalDragEnd: depth != 0 || _busy
                                          ? null
                                          : (details) {
                                              final velocity =
                                                  details.primaryVelocity ?? 0;
                                              if (_drag.abs() > 55 ||
                                                  velocity.abs() > 450) {
                                                _mark((_drag.abs() > 55
                                                        ? _drag
                                                        : velocity) >
                                                    0);
                                              } else {
                                                setState(() => _drag = 0);
                                              }
                                            },
                                      child: Stack(children: [
                                        card(visible[depth],
                                            selected: depth == 0),
                                        if (depth == 0 &&
                                            _drag.abs() > 12 &&
                                            !_busy)
                                          Positioned(
                                              top: 12,
                                              left: 8,
                                              right: 8,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: _drag > 0
                                                          ? _present
                                                          : _absent,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  child: Text(
                                                      _drag > 0
                                                          ? 'PRESENT'
                                                          : 'ABSENT',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontFamily: FontFamily
                                                              .poppins,
                                                          color:
                                                              Color(0xFF172B4D),
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                      ]),
                                    ))))),
                  if (pending.isNotEmpty)
                    Positioned(
                        top: cardHeight + 52,
                        left: 12,
                        right: 12,
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filledTonal(
                                    tooltip: 'Previous student',
                                    onPressed: _busy || _selected == 0
                                        ? null
                                        : () => _select(_selected - 1),
                                    icon:
                                        const Icon(Icons.chevron_left_rounded)),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Text(
                                        '${math.min(_selected + 1, pending.length)} / ${pending.length}',
                                        style: const TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                                IconButton.filledTonal(
                                    tooltip: 'Next student',
                                    onPressed: _busy || pending.length < 2
                                        ? null
                                        : () => _select(
                                            (_selected + 1) % pending.length),
                                    icon: const Icon(
                                        Icons.chevron_right_rounded)),
                              ]),
                          Wrap(
                              spacing: 12,
                              alignment: WrapAlignment.center,
                              children: [
                                TextButton(
                                    onPressed:
                                        _busy ? null : () => _mark(false),
                                    child: const Text('Absent',
                                        style: TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            color: _absent))),
                                TextButton(
                                    onPressed: _busy || pending.length < 2
                                        ? null
                                        : () => _select(
                                            (_selected + 1) % pending.length),
                                    child: const Text('Skip',
                                        style: TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            color: _pending))),
                                TextButton(
                                    onPressed: _busy ? null : () => _mark(true),
                                    child: const Text('Present',
                                        style: TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            color: _present))),
                              ]),
                        ])),
                  Positioned(
                      bottom: 28,
                      left: 4,
                      right: 4,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            for (final status in <bool?>[false, null, true])
                              Expanded(child: _pile(status, width, cardHeight)),
                          ])),
                  const Positioned(
                      bottom: 4,
                      left: 12,
                      right: 12,
                      child: Text(
                          'Closing attendance clears this draft · Not submitted',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 9,
                              color: Colors.white54))),
                  if (_flying != null)
                    AnimatedBuilder(
                        animation: _flight,
                        builder: (context, child) {
                          final t =
                              Curves.easeInOutCubic.transform(_flight.value);
                          final target = Offset(
                              stage.maxWidth * (_destination ? 5 / 6 : 1 / 6),
                              stage.maxHeight - 85 * scale);
                          final start = center + Offset(_drag, 0);
                          final point = Offset.lerp(start, target, t)! +
                              Offset(0, -45 * math.sin(t * math.pi));
                          return Positioned(
                              left: point.dx - width / 2,
                              top: point.dy - cardHeight / 2,
                              child: IgnorePointer(
                                  child: Transform.rotate(
                                      angle: (_destination ? 1 : -1) * 0.3 * t,
                                      child: Transform.scale(
                                          scale: 1 - 0.80 * t, child: child))));
                        },
                        child: card(_flying!)),
                ]);
              }),
            ),
          ]),
        ));
      })),
    );
  }

  Widget _pile(bool? status, double width, double height) {
    final indices = _group(status).where((index) => index != _flying).toList();
    final title = status == null
        ? 'Not marked'
        : status
            ? 'Present'
            : 'Absent';
    final color = status == null
        ? _pending
        : status
            ? _present
            : _absent;
    return Semantics(
      button: true,
      label: 'Review $title, ${indices.length} students',
      child: InkWell(
          onTap: _busy ? null : () => _review(status),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  height: 60,
                  width: 76,
                  child: Stack(alignment: Alignment.center, children: [
                    Container(
                        width: 42,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: color.withAlpha(90)),
                            color: color.withAlpha(15)),
                        child: Icon(
                            status == null
                                ? Icons.layers_outlined
                                : status
                                    ? Icons.check
                                    : Icons.close,
                            color: color,
                            size: 22)),
                    for (var i = 0; i < math.min(3, indices.length); i++)
                      ExcludeSemantics(
                          child: IgnorePointer(
                              child: Transform.translate(
                                  offset: Offset(i * 4.0, -i * 2.0),
                                  child: Transform.rotate(
                                      angle: (i - 1) * 0.13,
                                      child: SizedBox(
                                          width: 36,
                                          height: 48,
                                          child: FittedBox(
                                              child: SizedBox(
                                                  width: width,
                                                  height: height,
                                                  child: _StudentCard(
                                                      student: _students[
                                                          indices[
                                                              indices.length -
                                                                  1 -
                                                                  i]],
                                                      selected: true,
                                                      position: indices[
                                                              indices.length -
                                                                  1 -
                                                                  i] +
                                                          1)))))))),
                  ])),
              Text('$title (${_group(status).length})',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      color: color,
                      fontSize: 11,
                      fontWeight: FontWeight.w600)),
            ]),
          )),
    );
  }
}

class _StudentCard extends StatelessWidget {
  const _StudentCard(
      {required this.student, required this.selected, required this.position});
  final ClassroomStudentModel student;
  final bool selected;
  final int position;

  @override
  Widget build(BuildContext context) {
    final name = student.name?.trim();
    final displayName = name == null || name.isEmpty ? 'Student' : name;
    final initials = displayName
        .split(RegExp(r'\s+'))
        .take(2)
        .map((word) => word.characters.first)
        .join()
        .toUpperCase();
    final profile = student.profileImage?.trim() ?? '';
    final uri = Uri.tryParse(profile);
    final imageUrl =
        uri != null && (uri.scheme == 'https' || uri.scheme == 'http')
            ? profile
            : '${Endpoints.profileImageBaseURL}/user/$profile';
    final fallback = Center(
        child: Text(initials,
            style: const TextStyle(
                fontFamily: FontFamily.poppins,
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF855715))));
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: selected
                ? const [
                    Color(0xFFFFF3CC),
                    Color(0xFFFFD575),
                    Color(0xFFEFB647)
                  ]
                : const [Color(0xFF7D91B6), Color(0xFF354C70)]),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
            color: selected ? const Color(0xFFFFEDB1) : const Color(0xFF9AABCA),
            width: 2),
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 24, offset: Offset(0, 12))
        ],
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            Text(position.toString().padLeft(2, '0'),
                style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    color: selected ? const Color(0xFF855715) : Colors.white70,
                    fontWeight: FontWeight.w600)),
            const Spacer(),
            Icon(Icons.school_outlined,
                size: 16,
                color: selected ? const Color(0xFF855715) : Colors.white70),
          ]),
          const SizedBox(height: 8),
          Container(
            width: 88,
            height: 88,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: const Color(0xFFFFF5DB),
                borderRadius: BorderRadius.circular(18)),
            child: profile.isEmpty
                ? fallback
                : Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    frameBuilder: (context, child, frame, synchronous) =>
                        frame == null ? fallback : child,
                    errorBuilder: (context, error, stackTrace) => fallback,
                  ),
          ),
          const SizedBox(height: 10),
          Text(displayName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 16,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: selected ? const Color(0xFF392A17) : Colors.white)),
          const SizedBox(height: 8),
          Text('ENROLLMENT ID',
              style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 9,
                  letterSpacing: 1.0,
                  color: selected ? const Color(0xFF855715) : Colors.white70)),
          const SizedBox(height: 5),
          Text(
              student.enrollmentId?.trim().isNotEmpty == true
                  ? student.enrollmentId!
                  : 'Not assigned',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: selected ? const Color(0xFF392A17) : Colors.white)),
        ]),
      ),
    );
  }
}
