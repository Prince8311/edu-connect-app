import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyScreen extends HookConsumerWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    final progress = useState(0.0);
    final sectionKeys = useMemoized(
      () => List.generate(_sections.length, (_) => GlobalKey()),
    );
    final reduceMotion = MediaQuery.disableAnimationsOf(context);
    useEffect(() {
      void updateProgress() {
        if (!controller.hasClients) return;
        final extent = controller.position.maxScrollExtent;
        progress.value =
            extent > 0 ? (controller.offset / extent).clamp(0.0, 1.0) : 0;
      }

      controller.addListener(updateProgress);
      return () => controller.removeListener(updateProgress);
    }, [controller]);

    Future<void> openContents() async {
      final index = await showModalBottomSheet<int>(
        context: context,
        isScrollControlled: true,
        backgroundColor: ColorName.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        builder: (context) => SafeArea(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .72,
            child: Column(
              children: [
                const SizedBox(height: 12),
                Container(
                    width: 36,
                    height: 4,
                    decoration: BoxDecoration(
                      color: ColorName.borderColor,
                      borderRadius: BorderRadius.circular(4),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 8, 10),
                  child: Row(children: [
                    Expanded(
                        child: Text('On this page',
                            style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.w600,
                            ))),
                    IconButton(
                        tooltip: 'Close',
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_rounded)),
                  ]),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: _sections.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Text('${index + 1}'.padLeft(2, '0'),
                        style: const TextStyle(
                            color: ColorName.blueColor2,
                            fontWeight: FontWeight.w600)),
                    title: Text(
                        _sections[index].title.split('. ').skip(1).join('. '),
                        style: TextStyle(
                            fontFamily: FontFamily.poppins, fontSize: 13.sp)),
                    trailing: const Icon(Icons.arrow_forward_rounded, size: 18),
                    onTap: () => Navigator.pop(context, index),
                  ),
                )),
              ],
            ),
          ),
        ),
      );
      if (!context.mounted || index == null) return;
      final target = sectionKeys[index].currentContext;
      if (target != null) {
        await Scrollable.ensureVisible(target,
            duration: reduceMotion
                ? Duration.zero
                : const Duration(milliseconds: 450),
            curve: Curves.easeInOutCubic,
            alignment: .02);
      }
    }

    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
        title: 'Privacy Policy',
        showNotification: false,
        showSettings: false,
        useHomeRouteOnBack: false,
      ),
      body: SafeArea(
        child: Column(children: [
          LinearProgressIndicator(
            value: progress.value,
            minHeight: 3,
            color: ColorName.blueColor2,
            backgroundColor: ColorName.blueColor2.withAlpha(18),
            semanticsLabel: 'Reading progress',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 12,
                children: [
                  Text('16 SECTIONS',
                      style: TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: 11.sp,
                          letterSpacing: 1.3,
                          color: ColorName.black2)),
                  TextButton.icon(
                      onPressed: openContents,
                      icon: const Icon(Icons.toc_rounded, size: 20),
                      label: const Text('On this page'),
                      style: TextButton.styleFrom(
                          textStyle: TextStyle(
                              fontFamily: FontFamily.poppins, fontSize: 12.sp),
                          foregroundColor: ColorName.blueColor2)),
                ]),
          ),
          Expanded(
              child: Scrollbar(
            controller: controller,
            child: SingleChildScrollView(
              controller: controller,
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 28),
              child: Center(
                  child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: SelectionArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF102B56), Color(0xFF087EA0)],
                        ),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                              color: ColorName.blueColor2.withAlpha(35),
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
                                      color: Colors.white.withAlpha(22),
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          color: Colors.white.withAlpha(40))),
                                  child: const Icon(Icons.shield_outlined,
                                      color: Colors.white, size: 30)),
                              const SizedBox(width: 14),
                              Expanded(
                                  child: Text('EDU CONNEKT / LEGAL',
                                      style: TextStyle(
                                          fontFamily: FontFamily.poppins,
                                          fontSize: 10.sp,
                                          letterSpacing: 1.5,
                                          color: const Color(0xFFC4E9F4)))),
                            ]),
                            Gap(22.h),
                            Text('Privacy Policy',
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    letterSpacing: -.6)),
                            Gap(8.h),
                            Text(
                                'Your information. Your trust. Our responsibility.',
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 13.sp,
                                    height: 1.65,
                                    color: const Color(0xFFD6EDF5))),
                          ]),
                    ),
                    Gap(24.h),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(_introduction,
                            style: TextStyle(
                                fontFamily: FontFamily.poppins,
                                fontSize: 13.sp,
                                height: 1.85,
                                color: ColorName.black2))),
                    Gap(24.h),
                    for (var i = 0; i < _sections.length; i++) ...[
                      _PolicyCard(
                          key: sectionKeys[i],
                          section: _sections[i],
                          number: i + 1),
                      Gap(16.h),
                    ],
                    TextButton.icon(
                      onPressed: () => controller.animateTo(0,
                          duration: reduceMotion
                              ? Duration.zero
                              : const Duration(milliseconds: 450),
                          curve: Curves.easeInOutCubic),
                      icon: const Icon(Icons.arrow_upward_rounded, size: 18),
                      label: const Text('Back to top'),
                    ),
                  ],
                )),
              )),
            ),
          )),
        ]),
      ),
    );
  }
}

class _PolicyCard extends StatelessWidget {
  const _PolicyCard({super.key, required this.section, required this.number});
  final _PolicySection section;
  final int number;

  Future<void> _openLink(BuildContext context, String url) async {
    try {
      final opened = await launchUrl(Uri.parse(url));
      if (!opened && context.mounted)
        errorToast('Unable to open link. Please try again.');
    } catch (_) {
      if (context.mounted) errorToast('Unable to open link. Please try again.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: ColorName.blueColor2.withAlpha(18)),
        boxShadow: const [
          BoxShadow(
              color: Color(0x050F2544), blurRadius: 20, offset: Offset(0, 6))
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorName.blueColor2.withAlpha(18),
                  borderRadius: BorderRadius.circular(11)),
              child: Text('$number'.padLeft(2, '0'),
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontSize: 12.sp,
                      color: ColorName.blueColor2,
                      fontWeight: FontWeight.w600))),
          const SizedBox(width: 12),
          Expanded(
              child: Semantics(
                  header: true,
                  child: Text(section.title.split('. ').skip(1).join('. '),
                      style: TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: 16.sp,
                          height: 1.45,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF183451))))),
        ]),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Divider(height: 1, color: Color(0xFFEDF2F7))),
        for (final block in section.blocks)
          Padding(
            padding: EdgeInsets.only(
                top: block.kind == _BlockKind.heading ? 10 : 0, bottom: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (block.kind == _BlockKind.bullet) ...[
                Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: ColorName.blueColor2)),
                const SizedBox(width: 10),
              ],
              Expanded(
                  child: block.url != null
                      ? InkWell(
                          onTap: () => _openLink(context, block.url!),
                          borderRadius: BorderRadius.circular(6),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Text(block.text,
                                  style: TextStyle(
                                      fontFamily: FontFamily.poppins,
                                      fontSize: 13.sp,
                                      height: 1.75,
                                      color: ColorName.blueColor2,
                                      decoration: TextDecoration.underline))))
                      : Text(block.text,
                          style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 13.sp,
                              height: 1.75,
                              fontWeight: block.kind == _BlockKind.heading
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: block.kind == _BlockKind.heading
                                  ? const Color(0xFF183451)
                                  : ColorName.black2))),
            ]),
          ),
      ]),
    );
  }
}

enum _BlockKind { paragraph, heading, bullet }

class _PolicyBlock {
  const _PolicyBlock(this.text, {required this.kind, this.url});
  final String text;
  final _BlockKind kind;
  final String? url;
}

class _PolicySection {
  const _PolicySection(this.title, this.blocks);
  final String title;
  final List<_PolicyBlock> blocks;
}

// Policy wording from https://educonnekt.in/privacy-policy.
const _introduction =
    "Edu Connekt (“we”, “our”, “us”) is committed to protecting the privacy and security of users (“you”, “your”). This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our platform.";
const _sections = <_PolicySection>[
  _PolicySection("1. Scope of Policy", [
    _PolicyBlock("This policy applies to:", kind: _BlockKind.paragraph),
    _PolicyBlock("Website users", kind: _BlockKind.bullet),
    _PolicyBlock("Mobile application users", kind: _BlockKind.bullet),
    _PolicyBlock("Schools, teachers, students, and parents using the platform",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("2. Information We Collect", [
    _PolicyBlock("2.1 Personal Information", kind: _BlockKind.heading),
    _PolicyBlock("We may collect:", kind: _BlockKind.paragraph),
    _PolicyBlock("Name, email address, phone number", kind: _BlockKind.bullet),
    _PolicyBlock("Profile details (photo, designation, class details)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Login credentials (encrypted)", kind: _BlockKind.bullet),
    _PolicyBlock("2.2 Student Data (Sensitive)", kind: _BlockKind.heading),
    _PolicyBlock("Attendance records", kind: _BlockKind.bullet),
    _PolicyBlock("Academic performance, marks, report cards",
        kind: _BlockKind.bullet),
    _PolicyBlock("Behavioral or disciplinary records", kind: _BlockKind.bullet),
    _PolicyBlock("Health-related basic information (if provided by school)",
        kind: _BlockKind.bullet),
    _PolicyBlock("2.3 Technical & Usage Data", kind: _BlockKind.heading),
    _PolicyBlock("IP address", kind: _BlockKind.bullet),
    _PolicyBlock("Browser type, device information", kind: _BlockKind.bullet),
    _PolicyBlock("Login time, activity logs", kind: _BlockKind.bullet),
    _PolicyBlock("Location data (if enabled)", kind: _BlockKind.bullet),
    _PolicyBlock("2.4 Payment Information", kind: _BlockKind.heading),
    _PolicyBlock("Billing details", kind: _BlockKind.bullet),
    _PolicyBlock(
        "Transaction history (Note: Payment data is processed securely via third-party payment gateways)",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("3. How We Use Your Information", [
    _PolicyBlock("We use collected data to:", kind: _BlockKind.paragraph),
    _PolicyBlock("Provide and operate the platform", kind: _BlockKind.bullet),
    _PolicyBlock("Manage school administration and communication",
        kind: _BlockKind.bullet),
    _PolicyBlock("Generate reports, analytics, and insights",
        kind: _BlockKind.bullet),
    _PolicyBlock("Send notifications (SMS, email, app alerts)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Improve performance, security, and user experience",
        kind: _BlockKind.bullet),
    _PolicyBlock("Comply with legal obligations", kind: _BlockKind.bullet),
  ]),
  _PolicySection("4. Legal Basis for Processing", [
    _PolicyBlock("We process data based on:", kind: _BlockKind.paragraph),
    _PolicyBlock("Consent (user / institution approval)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Contractual necessity (service delivery)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Legal compliance (as per Indian law)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Legitimate interest (platform improvement, security)",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("5. Data Sharing & Disclosure", [
    _PolicyBlock("We do NOT sell personal data.", kind: _BlockKind.paragraph),
    _PolicyBlock("We may share data with:", kind: _BlockKind.paragraph),
    _PolicyBlock("5.1 Institution ", kind: _BlockKind.heading),
    _PolicyBlock(
        "Authorized admins, teachers, and staff can access relevant data",
        kind: _BlockKind.bullet),
    _PolicyBlock("5.2 Service Providers ", kind: _BlockKind.heading),
    _PolicyBlock("Cloud hosting providers (e.g., AWS, Azure)",
        kind: _BlockKind.bullet),
    _PolicyBlock("SMS / Email service providers", kind: _BlockKind.bullet),
    _PolicyBlock("Payment gateways", kind: _BlockKind.bullet),
    _PolicyBlock("5.3 Legal Authorities", kind: _BlockKind.heading),
    _PolicyBlock("When required by law or court order",
        kind: _BlockKind.bullet),
    _PolicyBlock("5.4 Business Transfers", kind: _BlockKind.heading),
    _PolicyBlock("In case of merger, acquisition, or restructuring",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("6. Data Security Measures", [
    _PolicyBlock("We implement industry-standard security:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("End-to-end encryption (where applicable)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Secure APIs and authentication (JWT/OAuth)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Role-based access control (RBAC)", kind: _BlockKind.bullet),
    _PolicyBlock("Firewalls and intrusion detection systems",
        kind: _BlockKind.bullet),
    _PolicyBlock("Regular security audits", kind: _BlockKind.bullet),
  ]),
  _PolicySection("7. Data Retention Policy", [
    _PolicyBlock("We implement industry-standard security:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Data is retained as long as the institution is active",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "After account termination, data may be deleted within 30–90 days",
        kind: _BlockKind.bullet),
    _PolicyBlock("Backup data may be retained longer for compliance",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("8. User Rights", [
    _PolicyBlock("Users (or institutions) have the right to:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Access their personal data", kind: _BlockKind.bullet),
    _PolicyBlock("Request correction or updates", kind: _BlockKind.bullet),
    _PolicyBlock("Request deletion (subject to legal obligations)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Restrict or object to processing", kind: _BlockKind.bullet),
    _PolicyBlock("Withdraw consent", kind: _BlockKind.bullet),
    _PolicyBlock("Requests can be made via: support@educonnekt.in",
        kind: _BlockKind.paragraph, url: "mailto:support@educonnekt.in"),
  ]),
  _PolicySection("9. Children’s Privacy", [
    _PolicyBlock("Edu Connekt is used by minors (students)",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "Schools are responsible for obtaining parental/guardian consent",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "We do not knowingly collect data directly from children without authorization",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("10. Cookies & Tracking Technologies", [
    _PolicyBlock("We use cookies and similar technologies to:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Maintain user sessions", kind: _BlockKind.bullet),
    _PolicyBlock("Improve performance and usability", kind: _BlockKind.bullet),
    _PolicyBlock("Analyze traffic and behavior", kind: _BlockKind.bullet),
    _PolicyBlock("Users can control cookies through browser settings.",
        kind: _BlockKind.paragraph),
  ]),
  _PolicySection("11. Third-Party Services", [
    _PolicyBlock("Our platform may integrate with:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Payment gateways", kind: _BlockKind.bullet),
    _PolicyBlock("SMS/WhatsApp APIs", kind: _BlockKind.bullet),
    _PolicyBlock("Analytics tools", kind: _BlockKind.bullet),
    _PolicyBlock(
        "These third parties have their own privacy policies, and we are not responsible for their practices.",
        kind: _BlockKind.paragraph),
  ]),
  _PolicySection("12. Cross-Border Data Transfer", [
    _PolicyBlock(
        "Data may be stored on servers located outside India (e.g., cloud providers)",
        kind: _BlockKind.bullet),
    _PolicyBlock("We ensure appropriate safeguards are in place",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("13. Data Breach Notification", [
    _PolicyBlock("In case of a data breach:", kind: _BlockKind.paragraph),
    _PolicyBlock(
        "We will notify affected institutions/users as required by law",
        kind: _BlockKind.bullet),
    _PolicyBlock("Immediate steps will be taken to mitigate risks",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("14. Changes to Privacy Policy", [
    _PolicyBlock("We may update this Privacy Policy from time to time.",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Users will be notified via:", kind: _BlockKind.paragraph),
    _PolicyBlock("Website notice", kind: _BlockKind.bullet),
    _PolicyBlock("Email notification (if applicable)", kind: _BlockKind.bullet),
  ]),
  _PolicySection("15. Disclaimer", [
    _PolicyBlock(
        "While we implement strong security measures, no system is 100% secure. Users share data at their own risk.",
        kind: _BlockKind.paragraph),
  ]),
  _PolicySection("16. Contact Information", [
    _PolicyBlock("Email: support@educonnekt.in",
        kind: _BlockKind.paragraph, url: "mailto:support@educonnekt.in"),
    _PolicyBlock("Phone: +91 9449618559",
        kind: _BlockKind.paragraph, url: "tel:+919449618559"),
    _PolicyBlock(
        "Address: THE MERIDIAN Luxury Hotel, District Stadium Main Road (Kurvangi main road), Dhantaramakki, Chikkamagaluru - 577101, Karnataka, India",
        kind: _BlockKind.paragraph),
  ]),
];
