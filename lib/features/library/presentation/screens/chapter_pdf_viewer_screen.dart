import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/text_field.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ChapterPdfViewerScreen extends StatefulWidget {
  const ChapterPdfViewerScreen({
    super.key,
    required this.pdfUrl,
    this.fallbackPdfUrl,
    required this.title,
  });

  final String pdfUrl;
  final String? fallbackPdfUrl;
  final String title;

  @override
  State<ChapterPdfViewerScreen> createState() => _ChapterPdfViewerScreenState();
}

class _ChapterPdfViewerScreenState extends State<ChapterPdfViewerScreen> {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  late String _activePdfUrl;
  bool _isLoading = true;
  String? _errorMessage;
  bool _usedFallback = false;
  int _currentPage = 1;
  int _totalPages = 0;

  @override
  void initState() {
    super.initState();
    _activePdfUrl = widget.pdfUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: PrimaryAppBar(
        title: widget.title,
        useHomeRouteOnBack: false,
        showNotification: false,
        showSettings: false,
      ),
      body: Stack(
        children: [
          SfPdfViewer.network(
            controller: _pdfViewerController,
            _activePdfUrl,
            canShowPaginationDialog: false,
            canShowScrollHead: false,
            canShowScrollStatus: false,
            onDocumentLoaded: (details) {
              if (!mounted) return;
              setState(() {
                _isLoading = false;
                _errorMessage = null;
                _currentPage = 1;
                _totalPages = details.document.pages.count;
              });
            },
            onPageChanged: (details) {
              if (!mounted) return;
              setState(() {
                _currentPage = details.newPageNumber;
              });
            },
            onDocumentLoadFailed: (details) {
              if (!mounted) return;

              // If primary URL fails, retry once with fallback URL.
              if (!_usedFallback &&
                  widget.fallbackPdfUrl != null &&
                  widget.fallbackPdfUrl!.isNotEmpty &&
                  _activePdfUrl != widget.fallbackPdfUrl) {
                setState(() {
                  _usedFallback = true;
                  _isLoading = true;
                  _errorMessage = null;
                  _activePdfUrl = widget.fallbackPdfUrl!;
                });
                return;
              }

              setState(() {
                _isLoading = false;
                _errorMessage = details.description;
              });
            },
          ),
          if (!_isLoading && _errorMessage == null && _totalPages > 0)
            Positioned(
              right: 10,
              top: 12,
              child: GestureDetector(
                onTap: _showPageJumpDialog,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  decoration: BoxDecoration(
                    color: ColorName.blueColor2.withAlpha(220),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(28),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    '$_currentPage / $_totalPages',
                    style: TextStyle(
                      color: ColorName.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: FontFamily.poppins,
                    ),
                  ),
                ),
              ),
            ),
          if (_isLoading)
            Center(
              child: Lottie.asset(
                Assets.animations.forbiddenFile,
                width: 125.w,
              ),
            ),
          if (_errorMessage != null)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.picture_as_pdf_outlined,
                      size: 44,
                      color: ColorName.redColor1,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Unable to load PDF',
                      style: TextStyle(
                        color: ColorName.black1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      _errorMessage!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: ColorName.black2,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _showPageJumpDialog() async {
    final pageController = TextEditingController(text: _currentPage.toString());

    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: const Text(
            'Go To Page',
            style: TextStyle(
              fontSize: 17,
              height: 1,
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: SizedBox(
            width: 340.w,
            height: 100.h,
            child: AppTextField(
              label: 'Page Number (1 - $_totalPages)',
              controller: pageController,
              keyboardType: TextInputType.number,
            ),
          ),
          actions: [
            SizedBox(
              width: 120,
              height: 43,
              child: ElevatedButton(
                onPressed: () {
                  final page = int.tryParse(pageController.text.trim());
                  if (page == null || page < 1 || page > _totalPages) {
                    return;
                  }
                  _pdfViewerController.jumpToPage(page);
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorName.blueColor2,
                  foregroundColor: ColorName.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                  minimumSize: const Size(120, 30),
                ),
                child: const Text(
                  'Go',
                  style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );

    // Dispose after dialog frame settles to avoid transient use-after-dispose.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      pageController.dispose();
    });
  }
}
