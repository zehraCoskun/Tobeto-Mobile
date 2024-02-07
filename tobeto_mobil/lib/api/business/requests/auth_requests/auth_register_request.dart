class AuthRegisterRequest {
  final String fullName;
  final String email;
  final String password;

  AuthRegisterRequest({
    required this.fullName,
    required this.email,
    required this.password,
  });
}
