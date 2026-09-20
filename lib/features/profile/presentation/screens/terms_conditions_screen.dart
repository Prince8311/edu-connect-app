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

class TermsConditionsScreen extends HookConsumerWidget {
  const TermsConditionsScreen({super.key});

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
                Gap(12.h),
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
                              fontSize: 20,
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
                            fontFamily: FontFamily.poppins, fontSize: 16)),
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
        title: 'Terms & Conditions',
        showNotification: false,
        useHomeRouteOnBack: false,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: SafeArea(
          top: false,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xFFE4EBF1))),
            ),
            child: InkWell(
              onTap: openContents,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEAF4F8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.toc_rounded,
                        color: ColorName.blueColor2, size: 24),
                  ),
                  Gap(12.w),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('On this page',
                          style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF183451))),
                      Text('${_sections.length} sections',
                          style: const TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 12,
                              color: Color(0xFF607386))),
                    ],
                  )),
                  const Icon(Icons.keyboard_arrow_up_rounded,
                      color: ColorName.blueColor2),
                ]),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          LinearProgressIndicator(
            value: progress.value,
            minHeight: 3,
            color: ColorName.blueColor2,
            backgroundColor: ColorName.blueColor2.withAlpha(18),
            semanticsLabel: 'Reading progress',
          ),
          Expanded(
              child: Scrollbar(
            controller: controller,
            child: SingleChildScrollView(
              controller: controller,
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Center(
                  child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: SelectionArea(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF102B56), Color(0xFF087EA0)],
                        ),
                        borderRadius: BorderRadius.circular(20),
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
                            Row(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                        color: Colors.white.withAlpha(22),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                            color: Colors.white.withAlpha(40))),
                                    child: const Icon(
                                        Icons.description_outlined,
                                        color: Colors.white,
                                        size: 30)),
                                Gap(14.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'EDU CONNEKT / LEGAL',
                                        style: TextStyle(
                                          fontFamily: FontFamily.poppins,
                                          fontSize: 12.sp,
                                          letterSpacing: 1.5,
                                          color: const Color(0xFFC4E9F4),
                                        ),
                                      ),
                                      Gap(2.h),
                                      Text(
                                        'Terms & Conditions',
                                        style: TextStyle(
                                            fontFamily: FontFamily.poppins,
                                            fontSize: 26.sp,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Gap(20.h),
                            Text('Clear terms. Shared responsibilities.',
                                style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 14.sp,
                                    height: 1.4,
                                    color: const Color(0xFFD6EDF5))),
                          ]),
                    ),
                    Gap(18.h),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(_introduction,
                            style: TextStyle(
                                fontFamily: FontFamily.poppins,
                                fontSize: 15.sp,
                                height: 1.4,
                                color: const Color(0xFF526477)))),
                    Gap(18.h),
                    for (var i = 0; i < _sections.length; i++) ...[
                      _PolicyCard(
                          key: sectionKeys[i],
                          section: _sections[i],
                          number: i + 1),
                      Gap(12.h),
                    ],
                    Center(
                      child: TextButton.icon(
                        onPressed: () => controller.animateTo(0,
                            duration: reduceMotion
                                ? Duration.zero
                                : const Duration(milliseconds: 450),
                            curve: Curves.easeInOutCubic),
                        icon: const Icon(Icons.arrow_upward_rounded, size: 19),
                        label: const Text('Back to top'),
                        style: TextButton.styleFrom(
                          minimumSize: const Size(48, 40),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 10),
                          foregroundColor: ColorName.blueColor2,
                          backgroundColor: ColorName.blueColor2.withAlpha(18),
                          shape: const StadiumBorder(),
                          textStyle: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
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
      padding: const EdgeInsets.all(16),
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
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              constraints: const BoxConstraints(minWidth: 45, minHeight: 38),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ColorName.blueColor2.withAlpha(18),
                  borderRadius: BorderRadius.circular(11)),
              child: Text('$number'.padLeft(2, '0'),
                  style: TextStyle(
                      fontFamily: FontFamily.poppins,
                      fontSize: 18.sp,
                      color: ColorName.blueColor2,
                      fontWeight: FontWeight.w600))),
          Gap(12.w),
          Expanded(
              child: Semantics(
                  header: true,
                  child: Text(section.title.split('. ').skip(1).join('. '),
                      style: TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontSize: 17.sp,
                          height: 1.3,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF183451))))),
        ]),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(height: 1, color: Color(0xFFEDF2F7))),
        for (final (index, block) in section.blocks.indexed)
          Padding(
            padding: EdgeInsets.only(
                top: block.kind == _BlockKind.heading && index > 0 ? 8 : 0,
                bottom: index == section.blocks.length - 1 ? 0 : 6),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              if (block.kind == _BlockKind.bullet) ...[
                Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: ColorName.blueColor2)),
                Gap(10.w),
              ],
              Expanded(
                  child: block.url != null
                      ? InkWell(
                          onTap: () => _openLink(context, block.url!),
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                              constraints: const BoxConstraints(minHeight: 10),
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.symmetric(vertical: 2),
                              child: Text(block.text,
                                  style: TextStyle(
                                    fontFamily: FontFamily.poppins,
                                    fontSize: 14.sp,
                                    height: 1.55,
                                    color: ColorName.blueColor2,
                                  ))))
                      : Text(block.text,
                          style: TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 15.sp,
                              height: 1.55,
                              fontWeight: block.kind == _BlockKind.heading
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: block.kind == _BlockKind.heading
                                  ? const Color(0xFF183451)
                                  : const Color(0xFF526477)))),
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

// Terms wording from https://educonnekt.in/terms-conditions.
const _introduction =
    "These Terms & Conditions (“Terms”) govern your access and use of the Edu Connekt platform (“Service”), operated by Shetty Ticket Counter Pvt Ltd (“Company”, “we”, “our”, “us”). By signing this Agreement, the School is agreeing to be bound by the following terms and conditions (\"Terms of Service\"). The Service provider reserves the right to update and change the Terms of Service from time to time without notice. Any new features that augment or enhance the current Service, including the release of new tools and resources, shall be subject to the Terms of Service. Continued use of the Service after any such changes shall constitute your consent to such changes. Violation of any of the terms below will result in the termination of your Account. While service provider prohibits such conduct and Content on the Service, you understand and agree that the service provider cannot be responsible for the Content posted on the Service and you nonetheless may be exposed to such materials. You agree to use the Service at your own risk.\n\nPlease read this agreement (\"TOS\") carefully. By using or accessing any Service, you (as the \"User\") agree to the terms of this TOS. \"Service\" means the Edu Connekt service. If you do not agree, do not use this Service.\n\nThis TOS is a legal agreement between you and Edu Connekt This TOS governs the Service, and content available through it. It also governs support services (if any) available as part of your subscription. If a separate or supplemental TOS appears when you access any element of the Service, its terms will control as to that element.\n\nEdu Connekt reserves the right to update and change the Terms of Service from time to time without notice. Any new features that augment or enhance the current Service, including the release of new tools and resources, shall be subject to the Terms of Service. Continued use of the Service after any such changes shall constitute your consent to such changes. You can review the most current version of the Terms of Service at any time.\n\nViolation of any of the terms below will result in the termination of your Account. While Edu Connekt prohibits such conduct and Content on the Service, you understand and agree that Edu Connekt cannot be responsible for the Content posted on the Service and you nonetheless may be exposed to such materials. You agree to use the Service at your own risk.";
const _sections = <_PolicySection>[
  _PolicySection("1. Definitions", [
    _PolicyBlock("Platform : Edu Connekt web and mobile application",
        kind: _BlockKind.bullet),
    _PolicyBlock("User : Any individual or entity using the platform",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "Content/Data : Any information uploaded (student records, attendance, etc.)",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("2. Eligibility", [
    _PolicyBlock(
        "You must be at least 18 years old or using under institutional authority",
        kind: _BlockKind.bullet),
    _PolicyBlock("Institutions must provide valid registration details",
        kind: _BlockKind.bullet),
    _PolicyBlock("Users must comply with applicable Indian laws",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("3. Account Registration & Security", [
    _PolicyBlock("Users must provide accurate and complete information",
        kind: _BlockKind.bullet),
    _PolicyBlock("Login credentials are confidential and must not be shared",
        kind: _BlockKind.bullet),
    _PolicyBlock("Institution Admin is responsible for all sub-user activities",
        kind: _BlockKind.bullet),
    _PolicyBlock("Any unauthorized access must be reported immediately",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("4. Roles & Responsibilities", [
    _PolicyBlock("4.1 Institution ", kind: _BlockKind.heading),
    _PolicyBlock("Responsible for accuracy of student and staff data",
        kind: _BlockKind.bullet),
    _PolicyBlock("Must obtain consent for student data collection",
        kind: _BlockKind.bullet),
    _PolicyBlock("Responsible for assigning roles and permissions",
        kind: _BlockKind.bullet),
    _PolicyBlock("4.2 Teachers / Staff ", kind: _BlockKind.heading),
    _PolicyBlock(
        "Must use the system only for academic and administrative purposes",
        kind: _BlockKind.bullet),
    _PolicyBlock("Cannot misuse student data", kind: _BlockKind.bullet),
    _PolicyBlock("4.3 Students / Parents", kind: _BlockKind.heading),
    _PolicyBlock("Must not misuse platform features", kind: _BlockKind.bullet),
    _PolicyBlock("Must maintain login confidentiality",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("5. Acceptable Use Policy", [
    _PolicyBlock("Users agree NOT to:", kind: _BlockKind.paragraph),
    _PolicyBlock("Use the platform for unlawful or fraudulent purposes",
        kind: _BlockKind.bullet),
    _PolicyBlock("Upload viruses, malware, or harmful code",
        kind: _BlockKind.bullet),
    _PolicyBlock("Attempt hacking, reverse engineering, or system abuse",
        kind: _BlockKind.bullet),
    _PolicyBlock("Share offensive, abusive, or illegal content",
        kind: _BlockKind.bullet),
    _PolicyBlock("Interfere with platform performance or security",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("6. Data Ownership & Processing", [
    _PolicyBlock("All institutional data belongs to the respective Institution",
        kind: _BlockKind.bullet),
    _PolicyBlock("Edu Connekt acts as a data processor, not data owner",
        kind: _BlockKind.bullet),
    _PolicyBlock("We process data only for service delivery purposes",
        kind: _BlockKind.bullet),
    _PolicyBlock("We may use anonymized data for analytics and improvement",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("7. Data Backup & Loss", [
    _PolicyBlock(
        "We perform periodic backups but do NOT guarantee zero data loss",
        kind: _BlockKind.bullet),
    _PolicyBlock("Institutions are advised to maintain their own backups",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "We are not liable for loss due to user actions or third-party failures",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("8. Subscription, Fees & Billing", [
    _PolicyBlock("The platform may be offered on a subscription basis",
        kind: _BlockKind.bullet),
    _PolicyBlock("Fees may vary based on modules, users, or features",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "Payment terms: advance / monthly / quaterly / yearly (as agreed)",
        kind: _BlockKind.bullet),
    _PolicyBlock("Non-payment may result in service suspension",
        kind: _BlockKind.bullet),
    _PolicyBlock("All payments are non-refundable, unless explicitly stated",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("9. Free Trial & Demo", [
    _PolicyBlock(
        "Free trials (if provided) are limited-time and feature-restricted",
        kind: _BlockKind.bullet),
    _PolicyBlock("Company reserves the right to terminate trial access anytime",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("10. Third-Party Integrations", [
    _PolicyBlock("The platform may integrate with:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("SMS / WhatsApp APIs", kind: _BlockKind.bullet),
    _PolicyBlock("Payment gateways", kind: _BlockKind.bullet),
    _PolicyBlock("Cloud hosting providers", kind: _BlockKind.bullet),
    _PolicyBlock(
        "We are not responsible for downtime or issues caused by third-party services.",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("11. Intellectual Property Rights", [
    _PolicyBlock(
        "All software, UI/UX, branding, and code belong to Edu Connekt",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "Institutions cannot copy, resell, or redistribute the platform",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "Custom developments remain property of the Company unless agreed",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("12. Confidentiality", [
    _PolicyBlock("Both parties agree to keep sensitive data confidential",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "This includes student records, internal communication, and credentials",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("13. Service Availability (SLA)", [
    _PolicyBlock(
        "We aim for high uptime but do not guarantee uninterrupted service",
        kind: _BlockKind.bullet),
    _PolicyBlock("Maintenance or updates may cause temporary downtime",
        kind: _BlockKind.bullet),
    _PolicyBlock("Emergency outages may occur beyond our control",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("14. Account Suspension & Termination", [
    _PolicyBlock("We may suspend or terminate accounts if:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Terms are violated", kind: _BlockKind.bullet),
    _PolicyBlock("Payment is overdue", kind: _BlockKind.bullet),
    _PolicyBlock("Suspicious or illegal activity is detected",
        kind: _BlockKind.bullet),
    _PolicyBlock("Upon termination:", kind: _BlockKind.paragraph),
    _PolicyBlock("Access will be revoked", kind: _BlockKind.bullet),
    _PolicyBlock("Data may be deleted after a defined period",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("15. Limitation of Liability", [
    _PolicyBlock("Edu Connekt shall NOT be liable for:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Indirect or consequential damages", kind: _BlockKind.bullet),
    _PolicyBlock("Data inaccuracies entered by users", kind: _BlockKind.bullet),
    _PolicyBlock("Business loss or academic decisions based on system data",
        kind: _BlockKind.bullet),
    _PolicyBlock("Third-party service failures", kind: _BlockKind.bullet),
    _PolicyBlock(
        "Maximum liability (if applicable) shall not exceed the fees paid in last 3 months.",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("16. Indemnification", [
    _PolicyBlock(
        "You agree to indemnify and hold harmless Edu Connekt against:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Legal claims arising from misuse", kind: _BlockKind.bullet),
    _PolicyBlock("Data breaches caused by institution negligence",
        kind: _BlockKind.bullet),
    _PolicyBlock("Violation of applicable laws", kind: _BlockKind.bullet),
  ]),
  _PolicySection("17. Force Majeure", [
    _PolicyBlock(
        "We are not responsible for failure due to events beyond control:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Natural disasters", kind: _BlockKind.bullet),
    _PolicyBlock("Government actions", kind: _BlockKind.bullet),
    _PolicyBlock("Internet failures", kind: _BlockKind.bullet),
  ]),
  _PolicySection("18. Updates & Modifications", [
    _PolicyBlock(
        "We are not responsible for failure due to events beyond control:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Terms may be updated at any time", kind: _BlockKind.bullet),
    _PolicyBlock("Continued use = acceptance of updated Terms",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("19. Governing Law & Jurisdiction", [
    _PolicyBlock(
        "We are not responsible for failure due to events beyond control:",
        kind: _BlockKind.paragraph),
    _PolicyBlock("Governed by the laws of India", kind: _BlockKind.bullet),
    _PolicyBlock("Jurisdiction: Karnataka, Chikkamagaluru",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("20. Refund and Cancellation", [
    _PolicyBlock(
        "For staffs or Students: For refund or cancellation contact your respective institutions",
        kind: _BlockKind.bullet),
    _PolicyBlock(
        "For Institutions: There is no Refund for the subscription you have taken. You can cancel the subscription  within your subscription time ends.",
        kind: _BlockKind.bullet),
  ]),
  _PolicySection("21. Contact Information", [
    _PolicyBlock("Email: support@educonnekt.in",
        kind: _BlockKind.paragraph, url: "mailto:support@educonnekt.in"),
    _PolicyBlock("Phone: +91 9449618559",
        kind: _BlockKind.paragraph, url: "tel:+919449618559"),
    _PolicyBlock(
        "Address: THE MERIDIAN Luxury Hotel, District Stadium Main Road (Kurvangi main road), Dhantaramakki, Chikkamagaluru - 577101, Karnataka, India",
        kind: _BlockKind.paragraph),
  ]),
];
