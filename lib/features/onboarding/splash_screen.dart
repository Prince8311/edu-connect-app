import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_token_provider.dart';
import 'package:edu_connect/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkOnboarding();
  }

  Future<void> _checkOnboarding() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    final token = await ref.read(authTokenProvider.notifier).getToken();

    if (!mounted) return;

    if (token != null && token.isNotEmpty) {
      TeacherHomeRoute().go(context);
    } else {
      AuthRoute().go(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Assets.images.splashLogo.image(
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
