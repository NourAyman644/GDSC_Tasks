class EndPoints {
  static const String baseurl = 'https://food-api-omega.vercel.app/api/v1/';
  static const String userSignin = 'user/signin';
  static const String userSendCode = 'user/send-code';
  static const String userChangeForgottenPassword =
      'user/change-forgotten-password';
  static const String getUser = 'user/get-user/';
  static const String deleteUser = 'user/delete';
  static String getUserEndpoint(id) {
    return '$getUser$id';
  }
}
//
// POST /user/signin
// POST /user/send-code
// PATCH user/change-forgotten-password
// GET /user/get-user/64a1fc7dc5b2fe879468c637
// DELETE /user/delete?id=64a1fa760db6e1f0ad3c52e6
