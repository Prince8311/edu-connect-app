import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum MenuLabel { home, resources, library, profile }

class BottomNavScreen extends ConsumerStatefulWidget {
  final StatefulNavigationShell child;
  const BottomNavScreen({
    super.key,
    required this.child,
  });

  @override
  ConsumerState<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends ConsumerState<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      body: widget.child,
      bottomNavigationBar: bottomNavBar().animate().slideY(begin: 1, end: 0),
    );
  }

  Widget bottomNavBar() {
    return Consumer(
      builder: (context, ref, child) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 88 + MediaQuery.viewPaddingOf(context).bottom,
            maxHeight: 88 + MediaQuery.viewPaddingOf(context).bottom,
          ),
          child: CustomBottomNavBar(
            selectedIndex: _currentIndex,
            bottomNavItems: _destinations(),
            onChange: (index) => _onDestinationSelected(index),
          ),
        );
      },
    );
  }

  List<BottomNavItem> _destinations() {
    return [
      BottomNavItem(
        label: 'Home',
        icon: const Icon(Icons.home),
        initialLocation: RoutePath.teacherHome,
      ),
      BottomNavItem(
        label: 'Resources',
        icon: const Icon(Icons.school),
        initialLocation: RoutePath.comingSoon,
      ),
      BottomNavItem(
        label: 'Library',
        icon: const Icon(Icons.menu_book),
        initialLocation: RoutePath.library,
      ),
      BottomNavItem(
        label: 'Profile',
        icon: const Icon(Icons.person),
        initialLocation: RoutePath.teacherProfile,
      ),
    ];
  }

  int _locationToTabIndex(String location) {
    final index = _destinations()
        .indexWhere((element) => location.startsWith(element.initialLocation));
    return index < 0 ? 0 : index;
  }

  int get _currentIndex =>
      _locationToTabIndex(GoRouterState.of(context).matchedLocation);

  void _onDestinationSelected(int index) {
    if (_currentIndex == index) {
      return;
    }
    context.go(_destinations()[index].initialLocation);
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    this.divider,
    this.color,
    this.topPadding = 15,
    this.bottomPadding = 15,
    required this.bottomNavItems,
    this.onChange,
  });
  final int selectedIndex;
  final void Function(int index)? onChange;
  final Widget? divider;
  final Color? color;
  final double topPadding;
  final double bottomPadding;
  final List<BottomNavItem> bottomNavItems;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewPaddingOf(context).bottom;
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 14),
      padding: EdgeInsets.fromLTRB(8, 2, 8, 5 + bottomInset),
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 24,
            spreadRadius: 1,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: bottomNavItems.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final e = entry.value;

            return Expanded(
              child: InkWell(
                onTap: () => onChange?.call(index),
                borderRadius: BorderRadius.circular(24),
                child: BottomNavItemWidget(
                  icon: e.icon,
                  initialLocation: e.initialLocation,
                  selected: index == selectedIndex,
                  label: e.label,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }

  String getMenuLabel(MenuLabel? label) {
    return switch (label) {
      MenuLabel.home => 'Home',
      MenuLabel.resources => 'Resources',
      MenuLabel.library => 'Library',
      MenuLabel.profile => 'Profile',
      _ => '-',
    };
  }
}

class BottomNavItem {
  final Widget icon;
  final String initialLocation;
  final String label;

  BottomNavItem({
    required this.icon,
    required this.initialLocation,
    required this.label,
  });
}

class BottomNavItemWidget extends StatelessWidget {
  const BottomNavItemWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.initialLocation,
    required this.selected,
  });
  final Widget icon;
  final String label;
  final String initialLocation;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              if (selected)
                Positioned(
                  top: -3,
                  child: Container(
                    width: 38,
                    height: 13,
                    decoration: BoxDecoration(
                      color: ColorName.themeColor.withAlpha(30),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              IconTheme(
                data: IconThemeData(
                  color: selected ? ColorName.themeColor : ColorName.black2,
                  size: 25,
                ),
                child: icon,
              ),
            ],
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontFamily: FontFamily.poppins,
              color: selected ? ColorName.themeColor : ColorName.black2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
