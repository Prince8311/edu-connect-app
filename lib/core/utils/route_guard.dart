import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:edu_connect/core/utils/public_routes.dart';

class RouteGuard {
  static Future<bool> hasAuthToken() async {
    final token = await SecureLocalStorage.instance.readData('authToken');
    return token != null && token.isNotEmpty;
  }

  static Future<String?> redirectLogic(
    BuildContext context,
    GoRouterState state,
  ) async {
    final isPublicRoute = PublicRoutes.isPublic(state.matchedLocation);
    if (isPublicRoute) {
      return null;
    }

    final token = await ProviderScope.containerOf(context, listen: false)
        .read(authTokenProvider.notifier)
        .getToken();
    final hasToken = token != null && token.isNotEmpty;

    if (hasToken) {
      return null;
    }
    return RoutePath.auth;
  }
}
