package com.educonnekt.app

import android.content.pm.PackageManager
import android.os.Build
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "edu_connect/biometrics")
            .setMethodCallHandler { call, result ->
                if (call.method == "hasFingerprintHardware") {
                    result.success(packageManager.hasSystemFeature(PackageManager.FEATURE_FINGERPRINT))
                } else if (call.method == "deviceName") {
                    result.success("${Build.MANUFACTURER} ${Build.MODEL}")
                } else {
                    result.notImplemented()
                }
            }
    }
}
