# Google Play review follow-up

The supplied rejection identifies Broken Functionality: version code 13 does
not open or load. The screenshot contains no crash trace or affected device.
These changes address verified source-code issues; they do not establish that
the rejection is resolved or guarantee approval.

## Changes made

- Removed unused CALL_PHONE, ACCESS_FINE_LOCATION, and ACCESS_COARSE_LOCATION
  declarations. Current app code does not request or use these permissions.
- The debug merged manifest exposed advertising-ID and ad attribution permissions
  added by native dependencies. Added manifest removal rules and disabled Firebase
  advertising-ID collection and default ad-personalization signals. This does not
  disable all analytics or establish that Data safety can declare no collection.
- Removed login payload, biometric device configuration, and raw API error logs.
  Disabled request/response header and body logging in the debug HTTP logger.
- Sign-in privacy and terms links now open the existing public in-app screens.
- Updated Kotlin from 1.9.24 to 2.2.20 because Flutter 3.44.9 rejects the old version.
  Android compileSdk and targetSdk were already 36 (Android 16).
- Use the installed Flutter SDK's NDK version instead of pinning NDK 27.
- Removed the unused permission_handler dependency, whose Android implementation
  required SDK 37 despite the app targeting Android 16. No app code imports it.

## Information still required before resubmission

1. Obtain the pre-launch report, affected device and crash/ANR traces for version
   13. The loading rejection is known; its device-specific root cause is not.
2. Provide working institution-issued demo credentials and instructions in Play
   Console > App access. Reviewers must be able to access all restricted features
   without relying on a personal OTP inbox or biometric enrollment. Do not add an
   authentication bypass to the app.
3. Verify the public privacy-policy URL in a browser while signed out. The web
   research tool could not fetch https://educonnekt.in/privacy-policy; that alone
   does not prove the page is unavailable. The in-app copy does not replace the
   public URL required in Play Console.
4. Reconcile Data safety with actual server processing and bundled SDK behavior.
   Source includes account/student records, selected photo/document uploads,
   authentication tokens and biometric device registration, plus Firebase SDKs.
   Native SDKs may collect data without explicit Dart calls; inspect the final
   merged release manifest and SDK configuration before declaring collection.
5. Confirm privacy-policy statements with the service owner, including providers,
   retention/deletion timing, security claims and children's data practices.
   The current text makes claims that cannot be verified from this repository.
6. Confirm the account lifecycle. Current UI signs into institution-issued
   accounts. If users can create accounts in-app or through an in-app link,
   implement a real account/data deletion request path in-app and on the web.
   Signing out or deleting local storage is not server-side account deletion.
7. Set the target audience accurately, including any children served by the app,
   and review the applicable Families requirements and SDK behavior.
8. Validate a signed release bundle and test on Android 16 before submission.
   A debug build alone cannot establish release or device compatibility.

## Official references

- User data: https://support.google.com/googleplay/android-developer/answer/10144311
- Reviewer access: https://support.google.com/googleplay/android-developer/answer/15748846
- Account deletion: https://support.google.com/googleplay/android-developer/answer/13327111
- Android 16 SDK: https://developer.android.com/about/versions/16/setup-sdk
- Firebase data controls: https://firebase.google.com/docs/analytics/android/configure-data-collection
