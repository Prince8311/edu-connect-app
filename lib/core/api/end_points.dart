class Endpoints {
  // -------- Base URLs --------
  static const String baseURL = 'https://api.educonnekt.in';
  static const String apiURL = '$baseURL/user';
  static const String profileImageBaseURL = '$baseURL/profile-images';
  static const String documentBaseURL = '$baseURL/documents';

  // -------- Auth --------
  static const String login = '/auth/login.php';
  static const String sendOTP = '/auth/send-otp.php';
  static const String roleSelect = '/auth/role-select.php';
  static const String studentSelect = '/auth/student-select.php';
  static const String guardianStudents = '/auth/guardian-students.php';
  static const String refreshToken = '/user/auth/refresh-token.php';
  static const String logout = '/auth/logout.php';

  // -------- Time Table --------
  static const String scheduledClasses = '/api/dashboard/scheduled-classes.php';

  // -------- Library --------
  static const String bookAdd = '/api/library/books/insert.php';
  static const String bookList = '/api/library/books/list.php';

  // -------- Profile --------
  static const String profileDetails = '/api/account/profile-details.php';
  static const String sendVerificationOtp =
      '/api/account/send-verification-otp.php';
  static const String verifyOtp = '/api/account/verify-otp.php';
}
