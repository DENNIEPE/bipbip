class SampleUser {
  final int userID;
  final String username;
  final String firstName;
  final String lastName;

  SampleUser(
    this.userID,
    this.username,
    this.firstName,
    this.lastName,
  );

  factory SampleUser.fromJson(Map<String, dynamic> map) {
    return SampleUser(
      map['UserID'],
      map['UserName'],
      map['FirstName'],
      map['LastName'],
    );
  }

  @override
  List<Object> get props => [
        userID,
        username,
        firstName,
        lastName,
      ];
  @override
  String toString() {
    return 'UserAgent{userID: $userID, username: $username, lastName: $lastName, firstName: $firstName}';
  }
}
