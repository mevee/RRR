class User {
  String? email;
  String? mobile;
  String? token;
  User(
    this.email,
    this.mobile,
    this.token,
  );
  @override
  String toString() {
     return "email: $email";
  }
}
