import 'package:edu_connect/core/shared/widgets/loader.dart';
import 'package:edu_connect/core/api/end_points.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/classroom/domain/models/classroom_model.dart';
import 'package:edu_connect/features/classroom/presentation/providers/classroom_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _ink = Color(0xFF172B4D);
const _muted = Color(0xFF748198);
const _blue = Color(0xFF2364DB);
const _border = Color(0xFFE6ECF4);

class ClassroomDetailsScreen extends ConsumerStatefulWidget {
  const ClassroomDetailsScreen({super.key, required this.id});

  final int id;

  @override
  ConsumerState<ClassroomDetailsScreen> createState() =>
      _ClassroomDetailsScreenState();
}

class _ClassroomDetailsScreenState
    extends ConsumerState<ClassroomDetailsScreen> {
  final _search = TextEditingController();
  bool _sortByName = false;

  static const _apps = [
    (
      label: 'Attendance',
      icon: Icons.fact_check_outlined,
      color: Color(0xFF2370D7),
      description: 'Keep track of every school day.'
    ),
    (
      label: 'Material',
      icon: Icons.auto_stories_outlined,
      color: Color(0xFF7953C7),
      description: 'A home for your classroom resources.'
    ),
    (
      label: 'Homework',
      icon: Icons.assignment_outlined,
      color: Color(0xFFE08A20),
      description: 'Keep learning beyond the classroom.'
    ),
    (
      label: 'Tests',
      icon: Icons.quiz_outlined,
      color: Color(0xFF138777),
      description: 'Follow your learning progress.'
    ),
    (
      label: 'Notice',
      icon: Icons.campaign_outlined,
      color: Color(0xFFD45879),
      description: 'Stay up to date with your classroom.'
    ),
  ];

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isTeacher =
        ref.watch(savedUserInfoProvider).asData?.value?.type?.toLowerCase() ==
            'teacher';
    final details = ref.watch(getClassroomDetailsProvider(id: widget.id));
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: const PrimaryAppBar(
        title: 'My classroom',
        showNotification: false,
        showSettings: false,
        useHomeRouteOnBack: false,
      ),
      body: details.when(
        loading: () => _loadingSkeleton(isTeacher: isTeacher),
        error: (error, stackTrace) => _unavailable(),
        data: (classroom) => classroom == null
            ? _unavailable()
            : _content(classroom, isTeacher: isTeacher),
      ),
    );
  }

  Widget _loadingSkeleton({required bool isTeacher}) => SafeArea(
        top: false,
        child: LayoutBuilder(builder: (context, constraints) {
          final horizontal = constraints.maxWidth > 760
              ? (constraints.maxWidth - 720) / 2
              : 20.0;
          final width = constraints.maxWidth - horizontal * 2;
          final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
          final columns = width >= 600 && scale <= 1.3
              ? 5
              : width >= 320 && scale <= 1.3
                  ? 3
                  : 2;
          final tileWidth = (width - (columns - 1) * 12) / columns;
          return Semantics(
            label: 'Loading classroom details',
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(horizontal, 24, horizontal, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Classroom summary, teacher and schedule.
                  const SkeletonLoader(height: 260, width: double.infinity),
                  const Gap(30),
                  const SkeletonLoader(height: 24, width: 160),
                  const Gap(8),
                  const SkeletonLoader(height: 14, width: 220),
                  const Gap(16),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: List.generate(
                        isTeacher ? 5 : 4,
                        (_) => SkeletonLoader(
                            height: 80 + 28.8 * scale, width: tileWidth)),
                  ),
                  const Gap(30),
                  const Row(children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkeletonLoader(height: 24, width: 110),
                        Gap(8),
                        SkeletonLoader(height: 14, width: 150),
                      ],
                    )),
                    Gap(12),
                    SkeletonLoader(height: 26, width: 75),
                  ]),
                  const Gap(16),
                  const SkeletonLoader(height: 54, width: double.infinity),
                  const Gap(16),
                  const Row(children: [
                    SkeletonLoader(height: 14, width: 110),
                    Spacer(),
                    SkeletonLoader(height: 14, width: 90),
                  ]),
                  const Gap(16),
                  for (var index = 0; index < 5; index++)
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: _border),
                      ),
                      child: const Row(children: [
                        SkeletonLoader(height: 45, width: 45),
                        Gap(14),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkeletonLoader(height: 18, width: double.infinity),
                            Gap(8),
                            FractionallySizedBox(
                                widthFactor: 0.65,
                                child: SkeletonLoader(
                                    height: 12, width: double.infinity)),
                          ],
                        )),
                      ]),
                    ),
                ],
              ),
            ),
          );
        }),
      );

  Widget _unavailable() => Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Classroom details are unavailable.'),
          const Gap(12),
          FilledButton(
            onPressed: () =>
                ref.invalidate(getClassroomDetailsProvider(id: widget.id)),
            child: const Text('Retry'),
          ),
        ]),
      );

  String _classLabel(ClassroomModel classroom) =>
      'Class ${classroom.className ?? '-'}${classroom.section ?? ''}';

  String _initials(String? name) {
    final words = (name ?? '')
        .trim()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty);
    return words.isEmpty
        ? '?'
        : words
            .take(2)
            .map((word) => word.characters.first)
            .join()
            .toUpperCase();
  }

  Widget _content(ClassroomModel classroom, {required bool isTeacher}) {
    final allStudents = classroom.students ?? const <ClassroomStudentModel>[];
    final query = _search.text.trim().toLowerCase();
    final students = allStudents
        .where((student) =>
            (student.name ?? '').toLowerCase().contains(query) ||
            (student.enrollmentId ?? '').toLowerCase().contains(query))
        .toList();
    students.sort((a, b) => _sortByName
        ? (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase())
        : (a.enrollmentId ?? '').compareTo(b.enrollmentId ?? ''));
    return DefaultTextStyle(
      style: const TextStyle(
          fontFamily: FontFamily.poppins, color: _ink, fontSize: 14),
      child: SafeArea(
        top: false,
        child: LayoutBuilder(builder: (context, constraints) {
          final horizontal = constraints.maxWidth > 760
              ? (constraints.maxWidth - 720) / 2
              : 20.0;
          return CustomScrollView(slivers: [
            SliverPadding(
              padding: EdgeInsets.fromLTRB(horizontal, 24, horizontal, 0),
              sliver: SliverToBoxAdapter(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    _summary(classroom),
                    const Gap(30),
                    const _SectionTitle(
                        title: 'Classroom apps',
                        subtitle: 'Everything you need, in one place'),
                    const Gap(16),
                    _appGrid(isTeacher: isTeacher),
                    const Gap(30),
                    Row(children: [
                      const Expanded(
                          child: _SectionTitle(
                              title: 'Students',
                              subtitle: 'Your classroom community')),
                      _Pill(
                          label: '${allStudents.length} students',
                          color: _blue),
                    ]),
                    const Gap(16),
                    _searchField(),
                    const Gap(12),
                    Row(children: [
                      Expanded(
                          child: Text(
                              '${students.length} of ${allStudents.length} students',
                              style: const TextStyle(
                                  color: _muted, fontSize: 12))),
                      Flexible(
                          child: PopupMenuButton<bool>(
                        tooltip: 'Sort students',
                        initialValue: _sortByName,
                        onSelected: (value) =>
                            setState(() => _sortByName = value),
                        itemBuilder: (_) => const [
                          PopupMenuItem(
                              value: false, child: Text('Enrollment ID')),
                          PopupMenuItem(value: true, child: Text('Name A–Z')),
                        ],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 6),
                          child: Row(children: [
                            const Icon(Icons.sort_rounded,
                                size: 18, color: _muted),
                            const Gap(6),
                            Flexible(
                                child: Text(
                                    _sortByName ? 'Name A–Z' : 'Enrollment ID',
                                    style: const TextStyle(
                                        fontSize: 12, color: _muted))),
                            const Icon(Icons.keyboard_arrow_down_rounded,
                                size: 18, color: _muted),
                          ]),
                        ),
                      )),
                    ]),
                  ])),
            ),
            if (students.isEmpty)
              SliverPadding(
                padding:
                    EdgeInsets.symmetric(horizontal: horizontal, vertical: 24),
                sliver: SliverToBoxAdapter(
                    child: Column(children: [
                  const Icon(Icons.person_search_outlined,
                      size: 42, color: _muted),
                  const Gap(12),
                  const Text('No students found',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  const Gap(4),
                  Text(
                      allStudents.isEmpty
                          ? 'No students have been added to this classroom.'
                          : 'Try a different name or enrollment ID.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _muted)),
                  if (query.isNotEmpty)
                    TextButton(
                        onPressed: _clearSearch,
                        child: const Text('Clear search')),
                ])),
              )
            else
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: horizontal),
                sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  final student = students[index];
                  final color =
                      _apps[(student.studentId ?? index).abs() % _apps.length]
                          .color;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Material(
                      color: Colors.white,
                      textStyle: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          color: _ink,
                          fontSize: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: const BorderSide(color: _border)),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () => _showPanel(
                            icon: Icons.person_outline_rounded,
                            color: color,
                            title: student.name ?? 'Student',
                            description:
                                'Enrollment ID ${student.enrollmentId ?? '-'} / ${_classLabel(classroom)}\n${classroom.subject ?? '-'}'),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _studentAvatar(student, color),
                                const Gap(14),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                      Text(student.name ?? 'Student',
                                          style: const TextStyle(
                                              fontSize: 15.5,
                                              fontWeight: FontWeight.w600)),
                                      const Gap(3),
                                      Text(
                                          'Enrollment ID: ${student.enrollmentId ?? '-'}',
                                          style: const TextStyle(
                                              fontSize: 12, color: _muted)),
                                    ])),
                              ]),
                        ),
                      ),
                    ),
                  );
                }, childCount: students.length)),
              ),
            const SliverToBoxAdapter(child: Gap(30)),
          ]);
        }),
      ),
    );
  }

  Widget _summary(ClassroomModel classroom) => Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF174CA8),
                Color(0xFF2376C3),
                Color(0xFF168F9C)
              ]),
          boxShadow: [
            BoxShadow(
                color: _blue.withAlpha(35),
                blurRadius: 24,
                offset: const Offset(0, 10))
          ],
        ),
        child: Stack(children: [
          Positioned(right: -42, top: -54, child: _ring(190)),
          Positioned(right: -24, top: -36, child: _ring(154)),
          Padding(
            padding: const EdgeInsets.all(18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(_classLabel(classroom),
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1,
                              color: Colors.white)),
                      const Gap(3),
                      Text(classroom.subject ?? '-',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withAlpha(220))),
                    ])),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(25),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withAlpha(45))),
                  child: const Icon(Icons.school_outlined,
                      color: Colors.white, size: 26),
                ),
              ]),
              Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
                Text('Classroom ID: ${classroom.classroomId ?? '-'}',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white.withAlpha(210))),
                IconButton(
                  tooltip: 'Copy classroom ID',
                  onPressed: classroom.classroomId == null
                      ? null
                      : () async {
                          await Clipboard.setData(
                              ClipboardData(text: classroom.classroomId!));
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Classroom ID copied')));
                        },
                  icon: const Icon(Icons.copy_rounded,
                      size: 16, color: Colors.white),
                ),
              ]),
              Divider(color: Colors.white.withAlpha(45), height: 12),
              _SummaryDetail(
                  icon: Icons.person_outline_rounded,
                  label: 'TEACHER',
                  value: classroom.teacher ?? '-'),
              const Gap(12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFF103F7C).withAlpha(65),
                    borderRadius: BorderRadius.circular(16)),
                child: LayoutBuilder(builder: (context, constraints) {
                  final day = _SummaryDetail(
                      icon: Icons.calendar_today_outlined,
                      label: 'DAY',
                      value: classroom.day ?? '-');
                  final time = _SummaryDetail(
                      icon: Icons.schedule_rounded,
                      label: 'TIME SLOT',
                      value:
                          '${classroom.period ?? '-'}\n${classroom.time ?? '-'}');
                  if (constraints.maxWidth < 250 ||
                      MediaQuery.textScalerOf(context).scale(12) > 15) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [day, Gap(10), time]);
                  }
                  return Row(children: [
                    Expanded(flex: 2, child: day),
                    Gap(12),
                    Expanded(flex: 3, child: time)
                  ]);
                }),
              ),
            ]),
          ),
        ]),
      );

  Widget _ring(double size) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white.withAlpha(18))),
      );

  Widget _studentAvatar(ClassroomStudentModel student, Color color) {
    final profileImage = student.profileImage?.trim();
    final initials = Center(
      child: Text(_initials(student.name),
          style: TextStyle(
              fontSize: 17, color: color, fontWeight: FontWeight.w600)),
    );
    return Container(
      width: 45,
      height: 45,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color.withAlpha(22),
        borderRadius: BorderRadius.circular(12),
      ),
      child: profileImage == null || profileImage.isEmpty
          ? initials
          : Image.network(
              '${Endpoints.profileImageBaseURL}/student/$profileImage',
              fit: BoxFit.cover,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) =>
                  frame == null ? initials : child,
              errorBuilder: (context, error, stackTrace) => initials,
            ),
    );
  }

  Widget _appGrid({required bool isTeacher}) =>
      LayoutBuilder(builder: (context, constraints) {
        final scale = MediaQuery.textScalerOf(context).scale(14) / 14;
        final columns = constraints.maxWidth >= 600 && scale <= 1.3
            ? 5
            : constraints.maxWidth >= 320 && scale <= 1.3
                ? 3
                : 2;
        final size = (constraints.maxWidth - (columns - 1) * 12) / columns;
        return Wrap(
            spacing: 12,
            runSpacing: 12,
            children: _apps
                .where((app) => app.label != 'Attendance' || isTeacher)
                .map((app) => SizedBox(
                      width: size,
                      height: 80 + 28.8 * scale,
                      child: Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(color: _border)),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => _showPanel(
                              icon: app.icon,
                              color: app.color,
                              title: app.label,
                              description: app.description,
                              comingSoon: true),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 14, 10, 10),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: app.color.withAlpha(23),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Icon(app.icon,
                                          color: app.color, size: 22)),
                                  const Gap(9),
                                  Center(
                                      child: Text(app.label,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontFamily: FontFamily.poppins,
                                              color: _ink,
                                              height: 1.2,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500))),
                                ]),
                          ),
                        ),
                      ),
                    ))
                .toList());
      });

  Widget _searchField() => TextField(
        controller: _search,
        onChanged: (_) => setState(() {}),
        style: const TextStyle(
            fontFamily: FontFamily.poppins, fontSize: 13, color: _ink),
        decoration: InputDecoration(
          hintText: 'Search name or enrollment ID',
          hintStyle: const TextStyle(color: _muted, fontSize: 13),
          prefixIcon: const Icon(Icons.search_rounded, color: _muted, size: 22),
          suffixIcon: _search.text.isEmpty
              ? null
              : IconButton(
                  tooltip: 'Clear search',
                  onPressed: _clearSearch,
                  icon: const Icon(Icons.close_rounded, size: 20)),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: _border)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: _border)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: _blue, width: 1.5)),
        ),
      );

  void _clearSearch() => setState(_search.clear);

  void _showPanel(
      {required IconData icon,
      required Color color,
      required String title,
      required String description,
      bool comingSoon = false}) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.white,
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28))),
      builder: (context) => SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(28, 8, 28, 28),
            child: SizedBox(
                width: double.infinity,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CircleAvatar(
                      radius: 34,
                      backgroundColor: color.withAlpha(22),
                      child: Icon(icon, color: color, size: 32)),
                  const Gap(20),
                  Text(title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: _ink)),
                  const Gap(10),
                  Text(description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          color: _muted,
                          height: 1.6)),
                  if (comingSoon) ...[
                    const Gap(20),
                    _Pill(label: 'Coming soon', color: color)
                  ],
                  const Gap(24),
                  SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: _blue,
                            padding: const EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14))),
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Close'),
                      )),
                ])),
          )),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.5)),
        const Gap(4),
        Text(subtitle, style: const TextStyle(fontSize: 12, color: _muted)),
      ]);
}

class _Pill extends StatelessWidget {
  const _Pill({required this.label, required this.color});
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
            color: color.withAlpha(18), borderRadius: BorderRadius.circular(8)),
        child: Text(label,
            style: TextStyle(
                fontFamily: FontFamily.poppins,
                color: color,
                fontSize: 10,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3)),
      );
}

class _SummaryDetail extends StatelessWidget {
  const _SummaryDetail(
      {required this.icon, required this.label, required this.value});
  final IconData icon;
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) =>
      Row(mainAxisSize: MainAxisSize.min, children: [
        Container(
          width: 34,
          height: 34,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(25),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white.withAlpha(45)),
          ),
          child: Icon(icon, color: Colors.white.withAlpha(210), size: 18),
        ),
        const Gap(10),
        Flexible(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(label,
              style: TextStyle(
                  fontSize: 9,
                  letterSpacing: 1,
                  color: Colors.white.withAlpha(175),
                  fontWeight: FontWeight.w500)),
          Gap(1),
          Text(value,
              style: const TextStyle(
                  fontSize: 13.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ])),
      ]);
}
