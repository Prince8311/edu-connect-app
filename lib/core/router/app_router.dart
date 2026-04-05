import 'dart:async';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:edu_connect/features/onboarding/coming_soon_screen.dart';
import 'package:edu_connect/core/shared/widgets/bottom_nav_bar.dart';

// UI Screens
import 'package:edu_connect/features/onboarding/splash_screen.dart';
import 'package:edu_connect/features/onboarding/maintenance_screen.dart';
import 'package:edu_connect/features/auth/presentation/screens/auth_screen.dart';

import 'package:edu_connect/features/library/presentation/screens/book_add_screen.dart';
import 'package:edu_connect/features/library/presentation/screens/book_details_screen.dart';
import 'package:edu_connect/features/library/presentation/screens/chapter_add_screen.dart';
import 'package:edu_connect/features/library/presentation/screens/library_screen.dart';
import 'package:edu_connect/features/profile/presentation/screens/settings_screen.dart';

// Teachers
import 'package:edu_connect/features/home/presentation/screens/teacher/home_screen.dart';
import 'package:edu_connect/features/profile/presentation/screens/teacher/profile_screen.dart';

part 'app_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutePath {
  static const String initial = '/';
  static const String comingSoon = '/coming-soon';
  static const String maintenance = '/maintenance';

  // auth screen
  static const String auth = '/auth';

  // teacher
  static const String teacherHome = '/teacher-home';
  static const String teacherProfile = '/teacher-profile';

  static const String library = '/library';
  static const String bookDetails = '/book-details';
  static const String addBook = '/add-book';
  static const String addChapter = '/add-chapter';
  static const String settings = '/settings';
}

class RouteName {
  static const String initial = 'initial';
  static const String comingSoon = 'comingSoon';
  static const String maintenance = 'maintenance';

  // auth screens
  static const String auth = 'auth';

  // teacher
  static const String teacherHome = 'teacherHome';
  static const String teacherProfile = 'teacherProfile';

  static const String library = 'library';
  static const String bookDetails = 'bookDetails';
  static const String addBook = 'addBook';
  static const String addChapter = 'addChapter';
  static const String settings = 'settings';
}

class AppRouter {
  static final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    observers: [
      BotToastNavigatorObserver(),
    ],
    debugLogDiagnostics: true,
    initialLocation: RoutePath.initial,
    routes: $appRoutes,
  );
}

@TypedGoRoute<SplashRoute>(
  path: RoutePath.initial,
  name: RouteName.initial,
)
class SplashRoute extends GoRouteData with _$SplashRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: SplashScreen());
  }
}

@TypedGoRoute<ComingSoonRoute>(
  path: RoutePath.comingSoon,
  name: RouteName.comingSoon,
)
class ComingSoonRoute extends GoRouteData with _$ComingSoonRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ComingSoonScreen());
  }
}

@TypedGoRoute<MaintainanceRoute>(
  path: RoutePath.maintenance,
  name: RouteName.maintenance,
)
class MaintainanceRoute extends GoRouteData with _$MaintainanceRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(MaintenanceScreen());
  }
}

@TypedGoRoute<AuthRoute>(
  path: RoutePath.auth,
  name: RouteName.auth,
)
class AuthRoute extends GoRouteData with _$AuthRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(child: AuthScreen());
  }
}

@TypedStatefulShellRoute<BottomNavRoute>(
  branches: [
    // Home Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<TeacherHomeRoute>(
          path: RoutePath.teacherHome,
          name: RouteName.teacherHome,
        ),
      ],
    ),

    // Library Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<LibraryRoute>(
          path: RoutePath.library,
          name: RouteName.library,
        ),
      ],
    ),

    // Profile Route
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<TeacherProfileRoute>(
          path: RoutePath.teacherProfile,
          name: RouteName.teacherProfile,
        ),
      ],
    ),
  ],
)
class BottomNavRoute extends StatefulShellRouteData {
  const BottomNavRoute();
  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return NoTransitionPage(
      child: BottomNavScreen(
        key: state.pageKey,
        child: navigationShell,
      ),
    );
  }
}

class TeacherHomeRoute extends GoRouteData with _$TeacherHomeRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(TeacherHomeScreen());
  }
}

class LibraryRoute extends GoRouteData with _$LibraryRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(LibraryScreen());
  }
}

class TeacherProfileRoute extends GoRouteData with _$TeacherProfileRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(TeacherProfileScreen());
  }
}

@TypedGoRoute<SettingsRoute>(
  path: RoutePath.settings,
  name: RouteName.settings,
)
class SettingsRoute extends GoRouteData with _$SettingsRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(SettingsScreen());
  }
}

@TypedGoRoute<BookDetailsRoute>(
  path: RoutePath.bookDetails,
  name: RouteName.bookDetails,
)
class BookDetailsRoute extends GoRouteData with _$BookDetailsRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(BookDetailsScreen());
  }
}

@TypedGoRoute<AddBookRoute>(
  path: RoutePath.addBook,
  name: RouteName.addBook,
)
class AddBookRoute extends GoRouteData with _$AddBookRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(BookAddScreen());
  }
}

@TypedGoRoute<AddChapterRoute>(
  path: RoutePath.addChapter,
  name: RouteName.addChapter,
)
class AddChapterRoute extends GoRouteData with _$AddChapterRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return slideTransitionPage(ChapterAddScreen());
  }
}

Page slideTransitionPage(
  Widget child, {
  int? milliseconds,
  Tween<Offset>? tween,
}) {
  return CustomTransitionPage(
    transitionDuration: Duration(milliseconds: milliseconds ?? 200),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: animation.drive(
        tween ?? Tween(begin: const Offset(1, 0), end: const Offset(0, 0)),
      ),
      child: child,
    ),
  );
}
