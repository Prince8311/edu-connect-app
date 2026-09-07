import 'package:edu_connect/core/router/app_router.dart';

class PublicRoutes {
  static const List<String> routes = <String>[
    RoutePath.initial,
    RoutePath.comingSoon,
    RoutePath.maintenance,
    RoutePath.auth,
    RoutePath.privacyPolicy,
    RoutePath.roleSelect,
    RoutePath.studentSelect,
  ];

  /// Check if a given route is public.
  static bool isPublic(String? route) {
    if (route == null || route.isEmpty) {
      return false;
    }
    return routes.contains(route);
  }
}
