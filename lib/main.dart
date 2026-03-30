import 'package:bot_toast/bot_toast.dart';
import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Edu Connekt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorName.themeColor),
        useMaterial3: true,
      ),
      builder: BotToastInit(),
      routerConfig: AppRouter.router,
    );
  }
}
