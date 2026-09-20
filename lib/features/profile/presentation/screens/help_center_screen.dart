import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  String _topic = 'All';

  @override
  Widget build(BuildContext context) {
    final results =
        _faqs.where((faq) => _topic == 'All' || faq.topic == _topic).toList();
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
          title: 'Help Center',
          showNotification: false,
          useHomeRouteOnBack: false),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xFF102B56), Color(0xFF087EA0)]),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                              color: ColorName.blueColor2.withAlpha(30),
                              blurRadius: 24,
                              offset: const Offset(0, 10))
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withAlpha(25),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: const Icon(Icons.support_agent_rounded,
                                      color: Colors.white, size: 30)),
                              Gap(14.w),
                              const Expanded(
                                  child: Text(
                                      'A LITTLE HELP.\nA LOT MORE CONFIDENCE.',
                                      style: TextStyle(
                                          color: Color(0xFFC4E9F4),
                                          fontSize: 11,
                                          letterSpacing: 1.4,
                                          height: 1.6,
                                          fontFamily: FontFamily.poppins))),
                            ]),
                            Gap(20.h),
                            const Text('How can we help?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: FontFamily.poppins)),
                            Gap(8.h),
                            const Text(
                                'Simple answers for a smoother campus day. Find help with your account, classes and learning resources.',
                                style: TextStyle(
                                    color: Color(0xFFD6EBF3),
                                    height: 1.6,
                                    fontSize: 14,
                                    fontFamily: FontFamily.poppins)),
                          ]),
                    ),
                    Gap(24.h),
                    Wrap(spacing: 8, runSpacing: 8, children: [
                      for (final topic in [
                        'All',
                        'Account',
                        'Students',
                        'Classes',
                        'Library',
                        'App'
                      ])
                        ChoiceChip(
                          label: Text(topic),
                          selected: _topic == topic,
                          onSelected: (_) => setState(() => _topic = topic),
                          selectedColor: ColorName.blueColor2,
                          backgroundColor: Colors.white,
                          checkmarkColor: Colors.white,
                          labelStyle: TextStyle(
                              color: _topic == topic
                                  ? Colors.white
                                  : ColorName.blueColor2),
                          side: BorderSide(
                              color: _topic == topic
                                  ? ColorName.blueColor2
                                  : const Color(0xFFDDE8EE)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24)),
                        ),
                    ]),
                    Gap(24.h),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: ColorName.blueColor2.withAlpha(20),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.question_answer_outlined,
                          color: ColorName.blueColor2,
                          size: 21,
                        ),
                      ),
                      Gap(10.w),
                      const Expanded(
                          child: Text('Find your answer',
                              style: TextStyle(
                                  fontFamily: FontFamily.poppins,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF183451)))),
                      Text(
                          '${results.length} ${results.length == 1 ? 'topic' : 'topics'}',
                          style: const TextStyle(color: ColorName.black2)),
                    ]),
                    Gap(12.h),
                    for (final faq in results) ...[
                      _FaqCard(key: ValueKey(faq.question), faq: faq),
                      Gap(10.h),
                    ],
                    Gap(14.h),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: const Color(0xFFEAF4F8),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.school_outlined,
                                color: ColorName.blueColor2, size: 28),
                            Gap(12.h),
                            const Text('Still need a hand?',
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: ColorName.blueColor2)),
                            Gap(8.h),
                            const Text(
                                'Contact your institution\'s office or class teacher for account access, student links or record corrections. Share the screen name, what happened and any error message. Never share your password or OTP.',
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 13,
                                    height: 1.7,
                                    color: Color(0xFF607386))),
                          ]),
                    ),
                    Gap(12.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FaqCard extends StatefulWidget {
  const _FaqCard({super.key, required this.faq});
  final _Faq faq;

  @override
  State<_FaqCard> createState() => _FaqCardState();
}

class _FaqCardState extends State<_FaqCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final faq = widget.faq;
    final duration = MediaQuery.disableAnimationsOf(context)
        ? Duration.zero
        : const Duration(milliseconds: 240);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE4EBF1)),
        boxShadow: [
          BoxShadow(
              color: ColorName.blueColor2.withAlpha(8),
              blurRadius: 12,
              offset: const Offset(0, 4))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        clipBehavior: Clip.antiAlias,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Semantics(
            button: true,
            expanded: _expanded,
            child: InkWell(
              onTap: () => setState(() => _expanded = !_expanded),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEAF4F8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(faq.topic,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: ColorName.blueColor2)),
                      ),
                      Gap(8.h),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(faq.question,
                                    style: const TextStyle(
                                        fontFamily: FontFamily.poppins,
                                        fontSize: 14,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF183451)))),
                            Gap(10.w),
                            AnimatedRotation(
                              turns: _expanded ? 0.5 : 0,
                              duration: duration,
                              child: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 21,
                                  color: ColorName.blueColor2),
                            ),
                          ]),
                    ]),
              ),
            ),
          ),
          AnimatedSize(
            duration: duration,
            alignment: Alignment.topCenter,
            curve: Curves.easeInOutCubic,
            child: _expanded
                ? Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 18, 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Divider(color: Color(0xFFE4EBF1), height: 1),
                          Gap(10.h),
                          SelectionArea(
                              child: Text(faq.answer,
                                  style: const TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: 13,
                                      height: 1.75,
                                      color: Color(0xFF607386)))),
                        ]),
                  )
                : const SizedBox.shrink(),
          ),
        ]),
      ),
    );
  }
}

class _Faq {
  const _Faq(this.topic, this.question, this.answer);
  final String topic, question, answer;
}

const _faqs = [
  _Faq('Account', 'Why can\'t I sign in?',
      'Use the account details registered with your institution. Check for typing mistakes and extra spaces, and confirm your internet connection. If your details are not recognized, ask your institution to check that your account is active.'),
  _Faq('Account', 'I forgot my password. How can I log in?',
      'On the sign-in screen, choose OTP and use your registered contact details. If you cannot access the registered contact or still cannot sign in, contact your institution for help with account access.'),
  _Faq('Account', 'My OTP has not arrived. What should I do?',
      'Check that you entered the contact registered with your institution. Check your messages or email inbox, including spam. Wait for the resend countdown before requesting another code, and use the most recent OTP. If delivery keeps failing, contact your institution.'),
  _Faq('Account', 'How do I verify my phone number or email?',
      'Open Profile and find Contact Information. Tap the phone or email row marked Pending. Three dots appear while the code is requested; the verification sheet opens when the request succeeds. Enter the OTP and tap Verify OTP. If the displayed contact is incorrect, ask your institution to correct it.'),
  _Faq('Account', 'Why do I see different features from another user?',
      'Available screens and actions depend on your role: student, teacher or guardian. Choose the correct role when prompted during sign-in. If your role or access looks wrong, ask your institution to check your account.'),
  _Faq('Students', 'How do I switch between my students?',
      'For guardian accounts, open Profile and tap Switch Student below the linked student details. Select a student from the list. After a successful switch, the app opens Home for that student.'),
  _Faq('Students', 'My student is missing from the selection list.',
      'Check your internet connection and use Retry if the student list could not load. If the list loads but a student is missing, ask your institution to check the link between your guardian account and that student.'),
  _Faq('Students', 'My profile or linked student details are incorrect.',
      'First check that you selected the correct student. For incorrect names, enrollment details, class, section or contact information, contact your institution. Avoid switching to another student\'s profile to work around an incorrect record.'),
  _Faq('Classes', 'Why is my timetable or today\'s schedule empty?',
      'Check the selected student and day. An empty schedule can mean no classes are scheduled or the institution has not made the schedule available. Use the refresh or retry option shown on the screen. If you expect a class, confirm the timetable with your class teacher.'),
  _Faq('Classes', 'Where can I find my class timings?',
      'Open Time Table from the bottom navigation to see the weekly schedule. Home also shows the day\'s schedule when it is available. Check the subject, time and class details before your lesson.'),
  _Faq('Classes', 'Who can access classroom attendance?',
      'The Attendance action in classroom details is available to teachers. If you are a student or guardian with a question about attendance, contact the class teacher. Teachers who cannot find the expected classroom should ask their institution to check their assignment.'),
  _Faq('Library', 'Where do I find books and chapters?',
      'Open Library from the bottom navigation, select a book and open its available chapters. Learning materials depend on what your institution has added. If an expected book or chapter is missing, ask your teacher or institution.'),
  _Faq('Library', 'A chapter or PDF will not open. What can I try?',
      'Check your connection, return to the book and try opening the chapter again. If other chapters work but one file does not, share the book name, chapter name and error message with your teacher so the file can be checked.'),
  _Faq('App', 'The app keeps loading or shows a connection error.',
      'Check that your device has internet access. Try another connection, then use Retry or Refresh where available. If the issue continues, close and reopen the app. Note the affected screen and error message so your institution can help investigate.'),
  _Faq('App', 'Why am I asked to sign in again?',
      'You may have logged out, or your saved session may no longer be accepted. Sign in using your registered details. On a shared device, use Profile > Logout when you finish to protect your account.'),
  _Faq('App', 'A feature says Coming Soon or the app is under maintenance.',
      'Coming Soon means that feature is not available yet. A maintenance screen means access is temporarily limited. Try again later, and contact your institution if you need urgent help with a class or record.'),
];
