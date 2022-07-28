import 'dart:convert';

class User {
  User({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.country,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String country;

  User copyWith({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String country,
  }) =>
      User(
        email: email,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        country: country,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJason() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    email: json["email"],
    password: json["password"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    phoneNumber: json["phoneNumber"],
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "firstName": firstName,
    "lastName": lastName,
    "phoneNumber": phoneNumber,
    "country": country,
  };
}