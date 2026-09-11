import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _ink = Color(0xFF172B4D);
const _muted = Color(0xFF748198);
const _blue = Color(0xFF2364DB);
const _border = Color(0xFFE6ECF4);

enum _Attendance {
  present('Present', Color(0xFF22A06B)),
  absent('Absent', Color(0xFFDE5058)),
  notMarked('Not marked', Color(0xFF98A2B3));

  const _Attendance(this.label, this.color);
  final String label;
  final Color color;
}

/// Preview content until the classroom data source is available.
class ClassroomDetailsScreen extends StatefulWidget {
  const ClassroomDetailsScreen({super.key});

  @override
  State<ClassroomDetailsScreen> createState() => _ClassroomDetailsScreenState();
}

class _ClassroomDetailsScreenState extends State<ClassroomDetailsScreen> {
  final _search = TextEditingController();
  bool _sortByName = false;

  static const _students = [
    (
      name: 'Aarav Sharma',
      roll: '01',
      initials: 'AS',
      attendance: _Attendance.present
    ),
    (
      name: 'Ananya Rao',
      roll: '02',
      initials: 'AR',
      attendance: _Attendance.present
    ),
    (
      name: 'Diya Patel',
      roll: '03',
      initials: 'DP',
      attendance: _Attendance.absent
    ),
    (
      name: 'Ishaan Kumar',
      roll: '04',
      initials: 'IK',
      attendance: _Attendance.notMarked
    ),
    (
      name: 'Meera Nair',
      roll: '05',
      initials: 'MN',
      attendance: _Attendance.present
    ),
    (
      name: 'Rohan Reddy',
      roll: '06',
      initials: 'RR',
      attendance: _Attendance.notMarked
    ),
    (
      name: 'Saanvi Shetty',
      roll: '07',
      initials: 'SS',
      attendance: _Attendance.present
    ),
    (
      name: 'Vivaan Joshi',
      roll: '08',
      initials: 'VJ',
      attendance: _Attendance.absent
    ),
  ];

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
    final query = _search.text.trim().toLowerCase();
    final students = _students
        .where((student) =>
            student.name.toLowerCase().contains(query) ||
            student.roll.contains(query))
        .toList();
    if (_sortByName) students.sort((a, b) => a.name.compareTo(b.name));
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      appBar: const PrimaryAppBar(
        title: 'My classroom',
        showNotification: false,
        showSettings: false,
        useHomeRouteOnBack: false,
      ),
      body: DefaultTextStyle(
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
                      _summary(),
                      const Gap(30),
                      const _SectionTitle(
                          title: 'Classroom apps',
                          subtitle: 'Everything you need, in one place'),
                      const Gap(16),
                      _appGrid(),
                      const Gap(30),
                      Row(children: [
                        const Expanded(
                            child: _SectionTitle(
                                title: 'Students',
                                subtitle: 'Your classroom community')),
                        _Pill(
                            label: '${_students.length} students',
                            color: _blue),
                      ]),
                      const Gap(16),
                      _searchField(),
                      const Gap(12),
                      Row(children: [
                        Expanded(
                            child: Text(
                                '${students.length} of ${_students.length} students',
                                style: const TextStyle(
                                    color: _muted, fontSize: 12))),
                        PopupMenuButton<bool>(
                          tooltip: 'Sort students',
                          initialValue: _sortByName,
                          onSelected: (value) =>
                              setState(() => _sortByName = value),
                          itemBuilder: (_) => const [
                            PopupMenuItem(
                                value: false, child: Text('Roll number')),
                            PopupMenuItem(value: true, child: Text('Name A–Z')),
                          ],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 6),
                            child: Row(children: [
                              const Icon(Icons.sort_rounded,
                                  size: 18, color: _muted),
                              const Gap(6),
                              Text(_sortByName ? 'Name A–Z' : 'Roll number',
                                  style: const TextStyle(
                                      fontSize: 12, color: _muted)),
                              const Icon(Icons.keyboard_arrow_down_rounded,
                                  size: 18, color: _muted),
                            ]),
                          ),
                        ),
                      ]),
                    ])),
              ),
              if (students.isEmpty)
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                      horizontal: horizontal, vertical: 24),
                  sliver: SliverToBoxAdapter(
                      child: Column(children: [
                    const Icon(Icons.person_search_outlined,
                        size: 42, color: _muted),
                    const Gap(12),
                    const Text('No students found',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    const Gap(4),
                    const Text('Try a different name or roll number.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: _muted)),
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
                        _apps[int.parse(student.roll) % _apps.length].color;
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
                              title: student.name,
                              description:
                                  'Roll number ${student.roll} · Class 10C\nKannada'),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 48,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: color.withAlpha(22),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Text(student.initials,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: color,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  const Gap(14),
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Text(student.name,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600)),
                                        const Gap(4),
                                        Text('Roll no. ${student.roll}',
                                            style: const TextStyle(
                                                fontSize: 12, color: _muted)),
                                      ])),
                                  const Gap(12),
                                  Tooltip(
                                    message: student.attendance.label,
                                    child: Semantics(
                                      label:
                                          'Attendance: ${student.attendance.label}',
                                      child: Container(
                                        width: 22,
                                        height: 22,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: student.attendance.color
                                                .withAlpha(24),
                                            shape: BoxShape.circle),
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: student.attendance.color,
                                                shape: BoxShape.circle)),
                                      ),
                                    ),
                                  ),
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
      ),
    );
  }

  Widget _summary() => Container(
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
                      const Text('Class 10C',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -1,
                              color: Colors.white)),
                      const Gap(3),
                      Text('Kannada',
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
                Text('Classroom ID  ·  389803196',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white.withAlpha(210))),
                IconButton(
                  tooltip: 'Copy classroom ID',
                  onPressed: () async {
                    await Clipboard.setData(
                        const ClipboardData(text: '389803196'));
                    if (!mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Classroom ID copied')));
                  },
                  icon: const Icon(Icons.copy_rounded,
                      size: 16, color: Colors.white),
                ),
              ]),
              Divider(color: Colors.white.withAlpha(45), height: 12),
              const _SummaryDetail(
                  icon: Icons.person_outline_rounded,
                  label: 'CLASS TEACHER',
                  value: 'Ms. Kavya Rao'),
              const Gap(12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFF103F7C).withAlpha(65),
                    borderRadius: BorderRadius.circular(16)),
                child: LayoutBuilder(builder: (context, constraints) {
                  const day = _SummaryDetail(
                      icon: Icons.calendar_today_outlined,
                      label: 'DAY',
                      value: 'Monday');
                  const time = _SummaryDetail(
                      icon: Icons.schedule_rounded,
                      label: 'TIME SLOT',
                      value: '09:00 – 09:45 AM');
                  if (constraints.maxWidth < 250 ||
                      MediaQuery.textScalerOf(context).scale(12) > 15) {
                    return const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [day, Gap(10), time]);
                  }
                  return const Row(children: [
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

  Widget _appGrid() => LayoutBuilder(builder: (context, constraints) {
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
                .map((app) => SizedBox(
                      width: size,
                      height: 64 + 28.8 * scale,
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
          hintText: 'Search name or roll number',
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
          width: 36,
          height: 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(25),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white.withAlpha(45)),
          ),
          child: Icon(icon, color: Colors.white.withAlpha(210), size: 20),
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
          const Gap(4),
          Text(value,
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ])),
      ]);
}
