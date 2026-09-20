import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:uuid/uuid.dart';
import 'package:edu_connect/core/shared/helpers/local_storage.dart';
import 'package:edu_connect/core/shared/miscellaneous/app_extensions.dart';
import 'package:edu_connect/core/shared/miscellaneous/gap.dart';
import 'package:edu_connect/core/shared/widgets/app_bar.dart';
import 'package:edu_connect/core/shared/widgets/toast.dart';
import 'package:edu_connect/features/profile/presentation/providers/biometric_provider.dart';
import 'package:edu_connect/gen/colors.gen.dart';
import 'package:edu_connect/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BiometricSetupScreen extends ConsumerStatefulWidget {
  const BiometricSetupScreen({super.key});
  @override
  ConsumerState<BiometricSetupScreen> createState() =>
      _BiometricSetupScreenState();
}

class _BiometricSetupScreenState extends ConsumerState<BiometricSetupScreen> {
  bool _busy = false;
  bool _verified = false;
  bool _filled = false;
  bool _saving = false;
  bool _passwordStep = false;
  bool _hidePassword = true;
  final _password = TextEditingController();
  final _passwordForm = GlobalKey<FormState>();
  late final BiometricService _service;

  @override
  void initState() {
    super.initState();
    _service = ref.read(biometricServiceProvider);
  }

  Future<void> _verify() async {
    if (_busy || _verified) return;
    setState(() => _busy = true);
    try {
      final unavailable = await _service.availabilityError();
      if (!mounted) return;
      if (unavailable != null) {
        errorToast(unavailable);
        return;
      }
      final success = await _service.verify();
      if (!mounted) return;
      if (success) {
        setState(() => _verified = true);
      } else {
        errorToast(
            'Verification was not completed. Tap Verify fingerprint to try again.');
      }
    } catch (error) {
      if (mounted) errorToast(BiometricService.errorMessage(error));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _finish() async {
    if (!_verified || !_filled || !_passwordStep || _saving) return;
    if (!(_passwordForm.currentState?.validate() ?? false)) return;
    setState(() => _saving = true);
    try {
      final storage = ref.read(secureStorageProvider);
      final token = await storage.readData('authToken');
      final rawUser = await storage.readData('user');
      final user =
          rawUser == null ? null : jsonDecode(rawUser) as Map<String, dynamic>;
      final userId = user?['id']?.toString();
      if (token == null || token.isEmpty || userId == null || userId.isEmpty) {
        if (mounted)
          errorToast('Your session is unavailable. Please sign in again.');
        return;
      }
      if (kIsWeb ||
          (defaultTargetPlatform != TargetPlatform.android &&
              defaultTargetPlatform != TargetPlatform.iOS)) {
        throw StateError('Unsupported platform');
      }
      final deviceName = await const MethodChannel('edu_connect/biometrics')
          .invokeMethod<String>('deviceName');
      if (deviceName == null || deviceName.trim().isEmpty) {
        throw StateError('Device information unavailable');
      }
      var deviceId = await storage.readData(LocalStorageKeys.biometricDeviceId);
      if (deviceId == null || deviceId.isEmpty) {
        deviceId = const Uuid().v4();
        if (!await storage.writeData(
            LocalStorageKeys.biometricDeviceId, deviceId)) {
          throw StateError('Unable to save device ID');
        }
      }
      if (!mounted) return;
      // Reuse the existing secure access token; do not create a stale second copy.
      if (!await storage.writeData('authToken', token) ||
          !await storage.writeData(LocalStorageKeys.biometricUserId, userId) ||
          !await storage.writeBool(biometricEnabledKey, true)) {
        throw StateError('Unable to save biometric setup');
      }
      final payload = <String, String>{
        'device_id': deviceId,
        'device_name': deviceName,
        'user_id': userId,
        'platform':
            defaultTargetPlatform == TargetPlatform.android ? 'android' : 'ios',
      };
      // Metadata only. Password and token must never be logged.
      debugPrint(jsonEncode(payload));
      _password.clear();
      if (!mounted) return;
      ref.invalidate(biometricEnabledProvider);
      Navigator.of(context).pop(true);
    } catch (_) {
      if (mounted)
        errorToast('Unable to save your preference. Please try again.');
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  void dispose() {
    _password.dispose();
    if (_busy) _service.cancel().catchError((Object _) {});
    super.dispose();
  }

  Widget _buildPasswordStep() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Center(
          child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560),
        child: Form(
            key: _passwordForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Gap(24.h),
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [ColorName.blueColor2, ColorName.blueColor1]),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.lock_outline_rounded,
                            color: Colors.white, size: 36),
                        Gap(20.h),
                        const Text('One final step',
                            style: TextStyle(
                                fontFamily: FontFamily.poppins,
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w600)),
                        Gap(10.h),
                        const Text(
                            'Enter your current account password to continue with biometric setup.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                height: 1.6)),
                      ]),
                ),
                Gap(28.h),
                TextFormField(
                  controller: _password,
                  obscureText: _hidePassword,
                  enabled: !_saving,
                  autocorrect: false,
                  enableSuggestions: false,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => _finish(),
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'Enter your current password.'
                      : null,
                  decoration: InputDecoration(
                    labelText: 'Current password',
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.lock_outline,
                        color: ColorName.blueColor2),
                    suffixIcon: IconButton(
                      tooltip:
                          _hidePassword ? 'Show password' : 'Hide password',
                      onPressed: () =>
                          setState(() => _hidePassword = !_hidePassword),
                      icon: Icon(_hidePassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                Gap(16.h),
                const Text(
                    'Password verification is not connected yet. Confirm saves this device setup locally; your password is not sent or stored.',
                    style: TextStyle(
                        fontSize: 12, height: 1.6, color: ColorName.black2)),
              ],
            )),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.lightBackground4,
      appBar: const PrimaryAppBar(
          title: 'Fingerprint Setup',
          showNotification: false,
          useHomeRouteOnBack: false),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(24, 12, 24, 20),
        child: _filled
            ? FilledButton(
                onPressed: _saving
                    ? null
                    : _passwordStep
                        ? _finish
                        : () => setState(() => _passwordStep = true),
                style: FilledButton.styleFrom(
                    backgroundColor: ColorName.blueColor2,
                    minimumSize: const Size.fromHeight(54),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                child: Text(_saving
                    ? 'Saving...'
                    : _passwordStep
                        ? 'Confirm'
                        : 'Next'),
              )
            : const SizedBox.shrink(),
      ),
      body: SafeArea(
          child: _passwordStep
              ? _buildPasswordStep()
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Center(
                      child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7),
                        decoration: BoxDecoration(
                            color: ColorName.blueColor2.withAlpha(18),
                            borderRadius: BorderRadius.circular(24)),
                        child: const Text('SECURE DEVICE VERIFICATION',
                            style: TextStyle(
                                letterSpacing: 1.3,
                                fontSize: 10,
                                color: ColorName.blueColor2,
                                fontWeight: FontWeight.w600)),
                      ),
                      Gap(22.h),
                      Text(
                          _verified
                              ? 'You\'re verified.'
                              : 'A touch of security.',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: ColorName.blueColor2)),
                      Gap(10.h),
                      Text(
                          _verified
                              ? 'Your device has confirmed your identity. Tap Next to save your preference.'
                              : 'Use a fingerprint already registered on this device to confirm your identity.',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: FontFamily.poppins,
                              fontSize: 14,
                              height: 1.6,
                              color: ColorName.black2)),
                      Gap(32.h),
                      Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const RadialGradient(
                                colors: [Colors.white, Color(0xFFEAF4F8)]),
                            border: Border.all(
                                color: ColorName.blueColor2.withAlpha(25))),
                        child: Center(
                            child: TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0, end: _verified ? 1 : 0),
                          duration: MediaQuery.disableAnimationsOf(context)
                              ? Duration.zero
                              : const Duration(milliseconds: 850),
                          curve: Curves.easeInOutCubic,
                          onEnd: () {
                            if (_verified && !_filled && mounted)
                              setState(() => _filled = true);
                          },
                          builder: (context, fill, _) => Semantics(
                            label: _verified
                                ? 'Identity verified'
                                : 'Awaiting verification',
                            child: SizedBox(
                                width: 150,
                                height: 170,
                                child: Stack(children: [
                                  const Positioned.fill(
                                      child: Icon(Icons.fingerprint,
                                          size: 150, color: Color(0xFFCDDDE4))),
                                  Positioned.fill(
                                      child: ClipRect(
                                          child: Align(
                                    alignment: Alignment.bottomCenter,
                                    heightFactor: 1,
                                    child: ClipRect(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      heightFactor: fill,
                                      child: const SizedBox(
                                          width: 150,
                                          height: 170,
                                          child: Icon(Icons.fingerprint,
                                              size: 150,
                                              color: ColorName.blueColor2)),
                                    )),
                                  ))),
                                ])),
                          ),
                        )),
                      ),
                      Gap(28.h),
                      if (!_verified) ...[
                        FilledButton.icon(
                          onPressed: _busy ? null : _verify,
                          icon: const Icon(Icons.fingerprint),
                          label: Text(_busy
                              ? 'Waiting for your device...'
                              : 'Verify fingerprint'),
                          style: FilledButton.styleFrom(
                              backgroundColor: ColorName.blueColor2,
                              minimumSize: const Size.fromHeight(52),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                        ),
                        Gap(12.h),
                        const Text(
                            'When the system prompt appears, touch your device\'s fingerprint sensor. Your device chooses the available biometric method.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.6,
                                color: ColorName.black2)),
                      ] else
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_circle_rounded,
                                  color: ColorName.blueColor2),
                              Text('  Verification successful',
                                  style: TextStyle(
                                      color: ColorName.blueColor2,
                                      fontWeight: FontWeight.w500)),
                            ]),
                      Gap(28.h),
                      Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.shield_outlined,
                                  color: ColorName.blueColor2, size: 22),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Text(
                                          'Your fingerprint stays on your device. Edu Connect receives only the verification result. To add a new fingerprint, use your device security settings.',
                                          style: TextStyle(
                                              fontSize: 12,
                                              height: 1.7,
                                              color: ColorName.black2)))),
                            ]),
                      ),
                    ]),
                  )),
                )),
    );
  }
}
