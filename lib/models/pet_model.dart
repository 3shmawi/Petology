// To parse this JSON data, do
//
//     final pet = petFromJson(jsonString);

import 'dart:convert';

import 'package:hackathon/models/static_home_data/bet_needs_model.dart';

class Pet {
  Pet({
    required this.id,
    required this.name,
    required this.image,
    required this.year,
    required this.month,
    required this.size,
    required this.breed,
    required this.gender,
    required this.hairLength,
    required this.color,
    required this.careBehavior,
    required this.houseTrained,
    required this.description,
    required this.location,
    required this.phone,
    required this.vaccinated,
    required this.categoryId,
    required this.userId,
    required this.user,
    required this.category,
  });

  final int id;
  final String name;
  final List<String> image;
  final int year;
  final int month;
  final String size;
  final String breed;
  final bool gender;
  final String hairLength;
  final String color;
  final String careBehavior;
  final bool houseTrained;
  final String description;
  final String location;
  final String phone;
  final bool vaccinated;
  final int categoryId;
  final int userId;
  final Owner user;
  final String category;

  Pet copyWith({
    required int id,
    required String name,
    required List<String> image,
    required int year,
    required int month,
    required String size,
    required String breed,
    required bool gender,
    required String hairLength,
    required String color,
    required String careBehavior,
    required bool houseTrained,
    required String description,
    required String location,
    required String phone,
    required bool vaccinated,
    required int categoryId,
    required int userId,
    required Owner user,
    required String category,
  }) =>
      Pet(
        id: id,
        name: name,
        image: image,
        year: year,
        month: month,
        size: size,
        breed: breed,
        gender: gender,
        hairLength: hairLength,
        color: color,
        careBehavior: careBehavior,
        houseTrained: houseTrained,
        description: description,
        location: location,
        phone: phone,
        vaccinated: vaccinated,
        categoryId: categoryId,
        userId: userId,
        user: user,
        category: category,
      );

  factory Pet.fromRawJson(String str) => Pet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pet.fromJson(Map<String, dynamic> json) => Pet(
        id: json["id"],
        name: json["name"],
        image: List<String>.from(json["image"].map((x) => x)),
        year: json["year"],
        month: json["month"],
        size: json["size"],
        breed: json["breed"],
        gender: json["gender"],
        hairLength: json["hairLength"],
        color: json["color"],
        careBehavior: json["careBehavior"],
        houseTrained: json["houseTrained"],
        description: json["description"],
        location: json["location"],
        phone: json["phone"],
        vaccinated: json["vaccinated"],
        categoryId: json["categoryId"],
        userId: json["userId"],
        user: Owner.fromJson(json["user"]),
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": List<dynamic>.from(image.map((x) => x)),
        "year": year,
        "month": month,
        "size": size,
        "breed": breed,
        "gender": gender,
        "hairLength": hairLength,
        "color": color,
        "careBehavior": careBehavior,
        "houseTrained": houseTrained,
        "description": description,
        "location": location,
        "phone": phone,
        "vaccinated": vaccinated,
        "categoryId": categoryId,
        "userId": userId,
        "user": user.toJson(),
        "category": category,
      };
}

class Owner {
  Owner({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  Owner copyWith({
    required String firstName,
    required String lastName,
  }) =>
      Owner(
        firstName: firstName,
        lastName: lastName,
      );

  factory Owner.fromRawJson(String str) => Owner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        firstName: json["firstName"],
        lastName: json["lastName"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
      };
}

List<Pet> decodePetsFromJson(String data) => List<Pet>.from(
      json.decode(data).map(
            (pet) => Pet.fromJson(
              pet,
            ),
          ),
    );

List<PetsNeedsModel> decodeBetNeedsModelsFromJson(data) =>
    List<PetsNeedsModel>.from(
      json.decode(data).map(
            (pet) => PetsNeedsModel.fromJson(
              pet,
            ),
          ),
    );
