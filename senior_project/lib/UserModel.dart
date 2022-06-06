class EdaaUser {
  String firstName;
  String lastName;
  String userEmail;
  String phoneNumber;
  String password;
  EdaaUser({
    this.firstName,
    this.lastName,
    this.userEmail,
    this.phoneNumber,
    this.password,
  });

  EdaaUser getUserDetails(EdaaUser user) {
    EdaaUser newUser = EdaaUser(
        firstName: user.firstName,
        lastName: user.lastName,
        userEmail: user.userEmail,
        phoneNumber: user.phoneNumber,
        password: user.password);

    return newUser;
  }
}
