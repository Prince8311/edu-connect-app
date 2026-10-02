# Play release audit — 2026-10-02

Scope: Android configuration, dependency declarations, Dart startup, routing,
authentication/biometrics, API handling, profile/photo uploads, library/document
flows, classroom/home screens, privacy/help text and automated tests. No access
to Play Console declarations, production server code or reviewer crash traces.
This is a source audit, not certification or a guarantee of approval.

## Changes in this audit

- Removed the active connectivity-event retry interceptor: a failed request no
  longer waits indefinitely for a network change or silently replays a write.
- Bounded connection/response/upload waits to 20/30/60 seconds. Token loading
  and onboarding preferences have five-second limits.
- Disabled debug request/response body and error logging (passwords, OTPs,
  student records and tokens can otherwise appear in developer logs).
- Blocked advertising/attribution/topics and unused location permissions at
  manifest merge. Disabled unused Firebase analytics/performance collection,
  default Crashlytics collection and messaging automatic initialization.
  No Dart Firebase initialization or messaging feature was found. Enabling
  these later requires revisiting disclosures and target-audience suitability.
- Explicitly disallowed cleartext network traffic. API base URL is HTTPS;
  server-provided images/documents must also use HTTPS.
- Connected the empty-schedule Refresh button to its providers.
- Made API error parsing tolerate HTML/plain-text server error responses.

## Items requiring release-owner/backend verification

1. **Loading rejection**: install the new signed bundle through internal testing
   on clean devices and after upgrading. Test slow/offline launch, password and
   OTP login, expired sessions, background/resume, biometrics, attendance and
   photo/PDF uploads. Inspect pre-launch crashes/ANRs and 16 KB native-library
   compatibility in Play Console. A successful build alone is insufficient.
2. **Reviewer access**: supply active institution-issued accounts for each role
   with populated demo classes/library. Include reusable password access and
   clear instructions; do not require the reviewer to obtain a private OTP or
   enroll a fingerprint. No authentication bypass has been added.
3. **Privacy URL**: fetching https://educonnekt.in/privacy-policy through the web
   research tool failed. This does not establish that the site is down. Verify
   publicly from a signed-out browser and ensure Play Console links to it.
4. **Privacy accuracy**: current text mentions health/discipline/payment/location
   data, cloud vendors, end-to-end encryption, JWT/OAuth, security audits and
   deletion in 30–90 days. Server evidence for these claims is not in this repo.
   Reconcile the in-app and public policy with actual operations. Do not claim
   end-to-end encryption merely because HTTPS is used. The statement disclaiming
   responsibility for third-party practices does not remove Play obligations.
5. **Data safety**: review account/contact identifiers, student/class/attendance
   records, photos, selected documents, authentication and biometric device
   registration, plus server logs and every bundled SDK. Local fingerprint
   matching is distinct from uploading fingerprint templates; the code uses
   OS authentication and a generated device token. Do not declare no collection
   just because analytics is disabled. Confirm backend retention/sharing.
6. **Children**: select target ages accurately for this school/student app.
   If children are included, verify SDK suitability, institution/parental consent
   and any content-sharing safeguards. Adult-only declarations must reflect the
   actual audience, not be used to avoid Families obligations.
7. **Account deletion**: code currently signs into institution-issued accounts;
   no registration flow was found. If any app or linked web flow creates accounts,
   implement an actual in-app deletion request and public web request resource,
   backed by deletion of associated server data. Logout is not deletion. Existing
   privacy-policy support contact needs an operational process for requests.
8. **Unfinished functionality**: classroom Material/Homework/Tests/Notice open
   Coming soon panels. They must not be advertised as working capabilities.
   Decide whether to implement or remove them for the release. Library and
   attendance provide actual functionality; placeholders alone do not establish
   a policy violation, but they increase review risk.
9. **Backend access control**: ensure student photos/documents and attendance are
   authorized per institution and role on the server. UI hiding is not access
   control. Server-generated document URLs need appropriate access protection.

## Official policy references checked

## Validation results

- Full Flutter suite: 80 tests passed. Updated stale biometric storage,
  attendance submission, provider-retry and startup timing fixtures.
- flutter analyze --no-fatal-infos: exit 0; informational lint notices remain.
- flutter build appbundle --release: succeeded, app-release.aab (88.4 MB).
- Inspected merged release manifest: no advertising, location or broad media
  permissions; collection flags and HTTPS restriction present. Notification,
  network-state, wake-lock and installation-referrer permissions still originate
  from dependencies; their presence alone does not prove collection.
- No physical-device run, Play pre-launch report, backend or Console declaration
  verification was performed. The Library Materials tab is also a placeholder.

## Official sources

- Functionality: https://support.google.com/googleplay/android-developer/answer/9898783
- User data: https://support.google.com/googleplay/android-developer/answer/10144311
- Account deletion: https://support.google.com/googleplay/android-developer/answer/13327111
- Families: https://support.google.com/googleplay/android-developer/answer/9893335
