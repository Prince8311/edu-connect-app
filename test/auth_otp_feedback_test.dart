import 'package:edu_connect/core/router/app_router.dart';
import 'package:edu_connect/features/auth/domain/models/auth_model.dart';
import 'package:edu_connect/features/auth/presentation/providers/auth_provider.dart';
import 'package:edu_connect/features/auth/presentation/screens/auth_screen.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Finder digit(int index) => find.byKey(ValueKey('otp-digit-$index'));

Future<void> enterOtp(WidgetTester tester, AuthResponse? response) async {
  await tester.binding.setSurfaceSize(const Size(400, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(ProviderScope(
    overrides: [
      sendOtpProvider(requestBody: const OtpRequest(name: 'test@example.com'))
          .overrideWith((ref) async => true),
      loginProvider(
        requestBody: const LoginRequest(
            name: 'test@example.com', loginByOtp: true, otp: '123456'),
      ).overrideWith((ref) async => response),
    ],
    child:
        MaterialApp(navigatorKey: rootNavigatorKey, home: const AuthScreen()),
  ));
  await tester.tap(find.text('OTP'));
  await tester.pump();
  await tester.enterText(find.byType(TextField).first, 'test@example.com');
  await tester.pump();
  await tester.ensureVisible(find.text('Send OTP'));
  await tester.tap(find.text('Send OTP'));
  await tester.pumpAndSettle();
  for (var i = 0; i < 6; i++) {
    await tester.enterText(digit(i), '${i + 1}');
  }
  await tester.pump();
  await tester.ensureVisible(find.text('Verify OTP & Sign In'));
}

void main() {
  testWidgets('Failed OTP turns all fields red, vibrates, and resets on edit',
      (tester) async {
    final haptics = <MethodCall>[];
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        haptics.add(call);
        return null;
      },
    );
    addTearDown(() => tester.binding.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null));
    await enterOtp(tester, null);
    expect(tester.widget<TextField>(digit(0)).decoration!.filled, false);
    await tester.tap(find.text('Verify OTP & Sign In'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 60));
    for (var i = 0; i < 6; i++) {
      final decoration = tester.widget<TextField>(digit(i)).decoration!;
      expect(decoration.enabledBorder!.borderSide.color, Colors.red.shade600);
      expect(decoration.fillColor, Colors.red.shade600.withAlpha(24));
    }
    expect(
        haptics.any((call) => call.method == 'HapticFeedback.vibrate'), true);
    final rowTransform =
        find.ancestor(of: digit(0), matching: find.byType(Transform)).first;
    expect(
        tester.widget<Transform>(rowTransform).transform.storage[12], isNot(0));
    await tester.pump(const Duration(milliseconds: 500));
    await tester.enterText(digit(5), '7');
    await tester.pump();
    expect(
        tester
            .widget<TextField>(digit(0))
            .decoration!
            .enabledBorder!
            .borderSide
            .color,
        ColorName.borderColor);
    await tester.pumpWidget(const SizedBox());
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('Successful OTP turns green and reveals ticks sequentially',
      (tester) async {
    await enterOtp(tester, const AuthResponse(nextScreen: 'selectRole'));
    await tester.tap(find.text('Verify OTP & Sign In'));
    await tester.pump();
    expect(
        tester
            .widget<TextField>(digit(0))
            .decoration!
            .enabledBorder!
            .borderSide
            .color,
        Colors.green.shade600);
    expect(find.byIcon(Icons.check_rounded), findsNothing);
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.byIcon(Icons.check_rounded), findsOneWidget);
    for (var count = 2; count <= 6; count++) {
      await tester.pump(const Duration(milliseconds: 160));
      expect(find.byIcon(Icons.check_rounded), findsNWidgets(count));
    }
    // Leaving during the success sequence must cancel any later navigation.
    await tester.pumpWidget(const SizedBox());
    await tester.pump(const Duration(seconds: 1));
    expect(tester.takeException(), isNull);
  });
}
