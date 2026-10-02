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
  $userSelectRoute,
  $roleSelectRoute,
  $studentSelectRoute,
  $bottomNavRoute,
  $changePasswordRoute,
  $classRoomsRoute,
  $classRoomDetailsRoute,
  $createClassRoomRoute,
  $bookDetailsRoute,
  $addBookRoute,
  $addChapterRoute,
  $privacyPolicyRoute,
  $termsConditionsRoute,
  $welcomeRoute,
  $helpCenterRoute,
  $biometricSetupRoute,
];

RouteBase get $splashRoute => GoRouteData.$route(
  path: '/',
  name: 'initial',
  hasOverriddenOnExit: false,
  factory: $SplashRoute._fromState,
);

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  @override
  String get location => GoRouteData.$location('/');

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
  hasOverriddenOnExit: false,
  factory: $ComingSoonRoute._fromState,
);

mixin $ComingSoonRoute on GoRouteData {
  static ComingSoonRoute _fromState(GoRouterState state) => ComingSoonRoute();

  @override
  String get location => GoRouteData.$location('/coming-soon');

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
  hasOverriddenOnExit: false,
  factory: $MaintainanceRoute._fromState,
);

mixin $MaintainanceRoute on GoRouteData {
  static MaintainanceRoute _fromState(GoRouterState state) =>
      MaintainanceRoute();

  @override
  String get location => GoRouteData.$location('/maintenance');

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
  hasOverriddenOnExit: false,
  factory: $AuthRoute._fromState,
);

mixin $AuthRoute on GoRouteData {
  static AuthRoute _fromState(GoRouterState state) => AuthRoute();

  @override
  String get location => GoRouteData.$location('/auth');

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

RouteBase get $userSelectRoute => GoRouteData.$route(
  path: '/user-select',
  name: 'userSelect',
  hasOverriddenOnExit: false,
  factory: $UserSelectRoute._fromState,
);

mixin $UserSelectRoute on GoRouteData {
  static UserSelectRoute _fromState(GoRouterState state) => UserSelectRoute();

  @override
  String get location => GoRouteData.$location('/user-select');

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

RouteBase get $roleSelectRoute => GoRouteData.$route(
  path: '/role-select',
  name: 'roleSelect',
  hasOverriddenOnExit: false,
  factory: $RoleSelectRoute._fromState,
);

mixin $RoleSelectRoute on GoRouteData {
  static RoleSelectRoute _fromState(GoRouterState state) => RoleSelectRoute();

  @override
  String get location => GoRouteData.$location('/role-select');

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

RouteBase get $studentSelectRoute => GoRouteData.$route(
  path: '/student-select',
  name: 'studentSelect',
  hasOverriddenOnExit: false,
  factory: $StudentSelectRoute._fromState,
);

mixin $StudentSelectRoute on GoRouteData {
  static StudentSelectRoute _fromState(GoRouterState state) =>
      StudentSelectRoute();

  @override
  String get location => GoRouteData.$location('/student-select');

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
          path: '/home',
          name: 'home',
          hasOverriddenOnExit: false,
          factory: $HomeRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/time-table',
          name: 'timeTable',
          hasOverriddenOnExit: false,
          factory: $TimeTableRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/library',
          name: 'library',
          hasOverriddenOnExit: false,
          factory: $LibraryRoute._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/profile',
          name: 'profile',
          hasOverriddenOnExit: false,
          factory: $ProfileRoute._fromState,
        ),
      ],
    ),
  ],
);

extension $BottomNavRouteExtension on BottomNavRoute {
  static BottomNavRoute _fromState(GoRouterState state) =>
      const BottomNavRoute();
}

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

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

mixin $TimeTableRoute on GoRouteData {
  static TimeTableRoute _fromState(GoRouterState state) => TimeTableRoute();

  @override
  String get location => GoRouteData.$location('/time-table');

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

mixin $LibraryRoute on GoRouteData {
  static LibraryRoute _fromState(GoRouterState state) => LibraryRoute();

  @override
  String get location => GoRouteData.$location('/library');

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

mixin $ProfileRoute on GoRouteData {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  @override
  String get location => GoRouteData.$location('/profile');

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

RouteBase get $changePasswordRoute => GoRouteData.$route(
  path: '/change-password',
  name: 'changePassword',
  hasOverriddenOnExit: false,
  factory: $ChangePasswordRoute._fromState,
);

mixin $ChangePasswordRoute on GoRouteData {
  static ChangePasswordRoute _fromState(GoRouterState state) =>
      ChangePasswordRoute();

  @override
  String get location => GoRouteData.$location('/change-password');

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

RouteBase get $classRoomsRoute => GoRouteData.$route(
  path: '/classrooms',
  name: 'classRooms',
  hasOverriddenOnExit: false,
  factory: $ClassRoomsRoute._fromState,
);

mixin $ClassRoomsRoute on GoRouteData {
  static ClassRoomsRoute _fromState(GoRouterState state) => ClassRoomsRoute();

  @override
  String get location => GoRouteData.$location('/classrooms');

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

RouteBase get $classRoomDetailsRoute => GoRouteData.$route(
  path: '/classroom-details/:id',
  name: 'classRoomDetails',
  hasOverriddenOnExit: false,
  factory: $ClassRoomDetailsRoute._fromState,
);

mixin $ClassRoomDetailsRoute on GoRouteData {
  static ClassRoomDetailsRoute _fromState(GoRouterState state) =>
      ClassRoomDetailsRoute(id: int.parse(state.pathParameters['id']!));

  ClassRoomDetailsRoute get _self => this as ClassRoomDetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/classroom-details/${Uri.encodeComponent(_self.id.toString())}',
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

RouteBase get $createClassRoomRoute => GoRouteData.$route(
  path: '/create-classroom',
  name: 'createClassRoom',
  hasOverriddenOnExit: false,
  factory: $CreateClassRoomRoute._fromState,
);

mixin $CreateClassRoomRoute on GoRouteData {
  static CreateClassRoomRoute _fromState(GoRouterState state) =>
      CreateClassRoomRoute();

  @override
  String get location => GoRouteData.$location('/create-classroom');

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
  hasOverriddenOnExit: false,
  factory: $BookDetailsRoute._fromState,
);

mixin $BookDetailsRoute on GoRouteData {
  static BookDetailsRoute _fromState(GoRouterState state) =>
      BookDetailsRoute($extra: state.extra as BookItemModel?);

  BookDetailsRoute get _self => this as BookDetailsRoute;

  @override
  String get location => GoRouteData.$location('/book-details');

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

RouteBase get $addBookRoute => GoRouteData.$route(
  path: '/add-book',
  name: 'addBook',
  hasOverriddenOnExit: false,
  factory: $AddBookRoute._fromState,
);

mixin $AddBookRoute on GoRouteData {
  static AddBookRoute _fromState(GoRouterState state) => AddBookRoute();

  @override
  String get location => GoRouteData.$location('/add-book');

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
  hasOverriddenOnExit: false,
  factory: $AddChapterRoute._fromState,
);

mixin $AddChapterRoute on GoRouteData {
  static AddChapterRoute _fromState(GoRouterState state) => AddChapterRoute(
    bookId: state.uri.queryParameters['book-id']!,
    bookName: state.uri.queryParameters['book-name']!,
  );

  AddChapterRoute get _self => this as AddChapterRoute;

  @override
  String get location => GoRouteData.$location(
    '/add-chapter',
    queryParams: {'book-id': _self.bookId, 'book-name': _self.bookName},
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

RouteBase get $privacyPolicyRoute => GoRouteData.$route(
  path: '/privacy-policy',
  name: 'privacyPolicy',
  hasOverriddenOnExit: false,
  factory: $PrivacyPolicyRoute._fromState,
);

mixin $PrivacyPolicyRoute on GoRouteData {
  static PrivacyPolicyRoute _fromState(GoRouterState state) =>
      const PrivacyPolicyRoute();

  @override
  String get location => GoRouteData.$location('/privacy-policy');

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

RouteBase get $termsConditionsRoute => GoRouteData.$route(
  path: '/terms-conditions',
  name: 'termsConditions',
  hasOverriddenOnExit: false,
  factory: $TermsConditionsRoute._fromState,
);

mixin $TermsConditionsRoute on GoRouteData {
  static TermsConditionsRoute _fromState(GoRouterState state) =>
      const TermsConditionsRoute();

  @override
  String get location => GoRouteData.$location('/terms-conditions');

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

RouteBase get $welcomeRoute => GoRouteData.$route(
  path: '/welcome',
  name: 'welcome',
  hasOverriddenOnExit: false,
  factory: $WelcomeRoute._fromState,
);

mixin $WelcomeRoute on GoRouteData {
  static WelcomeRoute _fromState(GoRouterState state) => WelcomeRoute();

  @override
  String get location => GoRouteData.$location('/welcome');

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

RouteBase get $helpCenterRoute => GoRouteData.$route(
  path: '/help-center',
  name: 'helpCenter',
  hasOverriddenOnExit: false,
  factory: $HelpCenterRoute._fromState,
);

mixin $HelpCenterRoute on GoRouteData {
  static HelpCenterRoute _fromState(GoRouterState state) =>
      const HelpCenterRoute();

  @override
  String get location => GoRouteData.$location('/help-center');

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

RouteBase get $biometricSetupRoute => GoRouteData.$route(
  path: '/biometric-setup',
  name: 'biometricSetup',
  hasOverriddenOnExit: false,
  factory: $BiometricSetupRoute._fromState,
);

mixin $BiometricSetupRoute on GoRouteData {
  static BiometricSetupRoute _fromState(GoRouterState state) =>
      const BiometricSetupRoute();

  @override
  String get location => GoRouteData.$location('/biometric-setup');

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
