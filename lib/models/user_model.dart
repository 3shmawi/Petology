class UserModel {
  late String email;
  late String password;
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String country;

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json["password"];
    firstName = json["firstName"];
    lastName = json["lastName"];
    phoneNumber = json["phoneNumber"];
    country = json["country"];
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "country": country,
      };
}
