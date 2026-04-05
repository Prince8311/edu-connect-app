class Endpoints {
  // -------- Base URLs --------
  static const String baseURL = 'https://api.edu-connect.ticketbay.in';
  static const String apiURL = '$baseURL/user';

  // -------- Auth --------
  static const String login = '/auth/login.php';
  static const String sendOTP = '/auth/send-otp.php';
  static const String refreshToken = '/auth/refresh-token.php';
  static const String logout = '/auth/logout.php';
}
