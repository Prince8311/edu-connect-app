import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:edu_connect/core/shared/widgets/refresh.dart';

mixin PaginationNotifier<T> on StateNotifier<T> {
  Future<void> loadData();
  Future<void> loadMore();
  Future<void> refresh();
}

class ApiListWidget<T> extends ConsumerStatefulWidget {
  const ApiListWidget({
    super.key,
    required this.data,
    required this.provider,
    required this.emptyCondition,
    this.scrollController,
    this.scrollControllerListener,
    required this.itemCount,
    required this.itemBuilder,
    required this.pageProvider,
    required this.canLoadMore,
    this.canLoadMoreReader,
    this.onIncrementPage,
    this.onResetPage,
    this.emptyBuilder,
    this.crossAxisCount = 3,
    this.crossAxisSpacing = 14,
    this.aspectRatio = 0.49,
    this.padding,
    this.isGridView = false,
  });

  final AutoDisposeStateNotifierProvider<dynamic, T> provider;
  final T data;
  final bool emptyCondition;
  final int itemCount;
  final ScrollController? scrollController;
  final void Function()? scrollControllerListener;
  final StateProvider<int>? pageProvider;
  final StateProvider<bool>? canLoadMore;
  final bool Function(WidgetRef ref)? canLoadMoreReader;
  final void Function(WidgetRef ref)? onIncrementPage;
  final void Function(WidgetRef ref)? onResetPage;
  final Widget Function(BuildContext context)? emptyBuilder;
  final int crossAxisCount;
  final double crossAxisSpacing;
  final double? aspectRatio;
  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsets? padding;
  final bool isGridView;

  @override
  ConsumerState<ApiListWidget<T>> createState() => _ApiListWidgetState<T>();
}

class _ApiListWidgetState<T> extends ConsumerState<ApiListWidget<T>> {
  late ScrollController _listScrollController;

  @override
  void initState() {
    super.initState();
    _listScrollController = widget.scrollController ?? ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _listScrollController
          .addListener(widget.scrollControllerListener ?? () {});

      _listScrollController.addListener(() {
        if (_listScrollController.position.pixels ==
            _listScrollController.position.maxScrollExtent) {
          if (!mounted) return;

          if (widget.canLoadMoreReader != null &&
              widget.onIncrementPage != null) {
            if (!widget.canLoadMoreReader!(ref)) return;

            widget.onIncrementPage!(ref);
            ref.read(widget.provider.notifier).loadMore();
            return;
          }

          if (widget.pageProvider != null && widget.canLoadMore != null) {
            if (!ref.read(widget.canLoadMore!)) return;

            ref
                .read(widget.pageProvider!.notifier)
                .update((state) => state + 1);

            ref.read(widget.provider.notifier).loadMore();
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final dynamic state = widget.data;

    return AppRefreshIndicator(
      provider: widget.provider,
      onRefreshCalled: () async {
        await ref.read(widget.provider.notifier).refresh();
      },
      child: _buildContent(state),
    );
  }

  Widget _buildContent(dynamic state) {
    // 🔥 Only show empty when NOT loading
    final shouldShowEmpty = widget.emptyCondition;

    if (shouldShowEmpty) {
      if (widget.emptyBuilder != null) {
        return ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: widget.emptyBuilder!(context),
            ),
          ],
        );
      }

      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Oops, No data found!',
                  style: TextStyle(
                    color: ColorName.black1,
                    fontFamily: FontFamily.poppins,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Gap(15.h),
                AppRefreshButton<T>(
                  provider: widget.provider,
                  onRefreshCalled: () {
                    if (widget.onResetPage != null) {
                      widget.onResetPage!(ref);
                      return;
                    }

                    if (widget.pageProvider == null) return;
                    ref
                        .read(widget.pageProvider!.notifier)
                        .update((state) => 1);
                  },
                ),
              ],
            ),
          ),
        ],
      );
    }

    return widget.isGridView
        ? GridView.builder(
            controller: _listScrollController,
            padding: widget.padding,
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: widget.crossAxisCount,
              crossAxisSpacing: widget.crossAxisSpacing,
              mainAxisSpacing: 0,
              childAspectRatio: widget.aspectRatio ?? 0.49,
            ),
            itemCount: widget.itemCount,
            itemBuilder: (context, index) =>
                widget.itemBuilder(context, index)!,
          )
        : ListView.builder(
            controller: _listScrollController,
            padding: widget.padding,
            physics: const AlwaysScrollableScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: widget.itemCount,
            itemBuilder: (context, index) =>
                widget.itemBuilder(context, index)!,
          );
  }
}
