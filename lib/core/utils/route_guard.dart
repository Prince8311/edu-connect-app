import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/core/utils/public_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteGuard {
  static Future<String?> redirectLogic(
    BuildContext context,
    GoRouterState state,
  ) async {
    final location = state.matchedLocation;

    // Public routes should never require an auth-token check.
    if (PublicRoutes.isPublic(location)) {
      return null;
    }

    try {
      final token = await ProviderScope.containerOf(
        context,
        listen: false,
      ).read(authTokenProvider.notifier).getToken();

      final hasToken = token != null && token.isNotEmpty;

      if (hasToken) {
        return null;
      }

      // User is not authenticated.
      return RoutePath.auth;
    } catch (e, stackTrace) {
      debugPrint('RouteGuard token check failed: $e');
      debugPrintStack(stackTrace: stackTrace);

      // Never leave navigation unresolved because secure storage failed.
      return RoutePath.auth;
    }
  }
}
