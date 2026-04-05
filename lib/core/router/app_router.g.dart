// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $comingSoonRoute,
      $maintainanceRoute,
      $authRoute,
      $bottomNavRoute,
      $settingsRoute,
      $bookDetailsRoute,
      $addBookRoute,
      $addChapterRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      name: 'initial',
      factory: _$SplashRoute._fromState,
    );

mixin _$SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $comingSoonRoute => GoRouteData.$route(
      path: '/coming-soon',
      name: 'comingSoon',
      factory: _$ComingSoonRoute._fromState,
    );

mixin _$ComingSoonRoute on GoRouteData {
  static ComingSoonRoute _fromState(GoRouterState state) => ComingSoonRoute();

  @override
  String get location => GoRouteData.$location(
        '/coming-soon',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $maintainanceRoute => GoRouteData.$route(
      path: '/maintenance',
      name: 'maintenance',
      factory: _$MaintainanceRoute._fromState,
    );

mixin _$MaintainanceRoute on GoRouteData {
  static MaintainanceRoute _fromState(GoRouterState state) =>
      MaintainanceRoute();

  @override
  String get location => GoRouteData.$location(
        '/maintenance',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authRoute => GoRouteData.$route(
      path: '/auth',
      name: 'auth',
      factory: _$AuthRoute._fromState,
    );

mixin _$AuthRoute on GoRouteData {
  static AuthRoute _fromState(GoRouterState state) => AuthRoute();

  @override
  String get location => GoRouteData.$location(
        '/auth',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bottomNavRoute => StatefulShellRouteData.$route(
      factory: $BottomNavRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/teacher-home',
              name: 'teacherHome',
              factory: _$TeacherHomeRoute._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/library',
              name: 'library',
              factory: _$LibraryRoute._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/teacher-profile',
              name: 'teacherProfile',
              factory: _$TeacherProfileRoute._fromState,
            ),
          ],
        ),
      ],
    );

extension $BottomNavRouteExtension on BottomNavRoute {
  static BottomNavRoute _fromState(GoRouterState state) =>
      const BottomNavRoute();
}

mixin _$TeacherHomeRoute on GoRouteData {
  static TeacherHomeRoute _fromState(GoRouterState state) => TeacherHomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/teacher-home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$LibraryRoute on GoRouteData {
  static LibraryRoute _fromState(GoRouterState state) => LibraryRoute();

  @override
  String get location => GoRouteData.$location(
        '/library',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$TeacherProfileRoute on GoRouteData {
  static TeacherProfileRoute _fromState(GoRouterState state) =>
      TeacherProfileRoute();

  @override
  String get location => GoRouteData.$location(
        '/teacher-profile',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      name: 'settings',
      factory: _$SettingsRoute._fromState,
    );

mixin _$SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => SettingsRoute();

  @override
  String get location => GoRouteData.$location(
        '/settings',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bookDetailsRoute => GoRouteData.$route(
      path: '/book-details',
      name: 'bookDetails',
      factory: _$BookDetailsRoute._fromState,
    );

mixin _$BookDetailsRoute on GoRouteData {
  static BookDetailsRoute _fromState(GoRouterState state) => BookDetailsRoute();

  @override
  String get location => GoRouteData.$location(
        '/book-details',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $addBookRoute => GoRouteData.$route(
      path: '/add-book',
      name: 'addBook',
      factory: _$AddBookRoute._fromState,
    );

mixin _$AddBookRoute on GoRouteData {
  static AddBookRoute _fromState(GoRouterState state) => AddBookRoute();

  @override
  String get location => GoRouteData.$location(
        '/add-book',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $addChapterRoute => GoRouteData.$route(
      path: '/add-chapter',
      name: 'addChapter',
      factory: _$AddChapterRoute._fromState,
    );

mixin _$AddChapterRoute on GoRouteData {
  static AddChapterRoute _fromState(GoRouterState state) => AddChapterRoute();

  @override
  String get location => GoRouteData.$location(
        '/add-chapter',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
