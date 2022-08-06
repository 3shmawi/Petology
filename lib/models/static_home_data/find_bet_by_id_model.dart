import 'dart:convert';

class FindBetsByIdModel {
  late final int id;
  late final String name;
  late final List<String> image;
  late final int year;
  late final int month;
  late final String size;
  late final String breed;
  late final bool gender;
  late final String hairLength;
  late final String color;
  late final String careBehavior;
  late final bool houseTrained;
  late final String description;
  late final String location;
  late final String phone;
  late final bool vaccinated;
  late final int categoryId;
  late final int userId;
  late final User user;
  late final String category;

  FindBetsByIdModel({
    required this.id,
    required this.name,
    required this.year,
    required this.breed,
    required this.image,
    required this.location,
    required this.phone,
    required this.color,
    required this.size,
    required this.description,
    required this.category,
    required this.month,
    required this.careBehavior,
    required this.categoryId,
    required this.gender,
    required this.hairLength,
    required this.houseTrained,
    required this.user,
    required this.userId,
    required this.vaccinated,
  });

  FindBetsByIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = (json['image'] != null ? List<String>.from(json['image']) : null)!;
    year = json['year'];
    month = json['month'];
    size = json['size'];
    breed = json['breed'];
    gender = json['gender'];
    hairLength = json['hairLength'];
    color = json['color'];
    careBehavior = json['careBehavior'];
    houseTrained = json['houseTrained'];
    description = json['description'];
    location = json['location'];
    phone = json['phone'];
    vaccinated = json['vaccinated'];
    categoryId = json['categoryId'];
    userId = json['userId'];
    user = (json['user'] != null ? User.fromJson(json['user']) : null)!;
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image.map((e) => e.toString()).toList();
    data['year'] = year;
    data['month'] = month;
    data['size'] = size;
    data['breed'] = breed;
    data['gender'] = gender;
    data['hairLength'] = hairLength;
    data['color'] = color;
    data['careBehavior'] = careBehavior;
    data['houseTrained'] = houseTrained;
    data['description'] = description;
    data['location'] = location;
    data['phone'] = phone;
    data['vaccinated'] = vaccinated;
    data['categoryId'] = categoryId;
    data['userId'] = userId;
    data['user'] = user.toJson();
    data['category'] = category;
    return data;
  }
}

class User {
  String? firstName;
  String? lastName;

  User({this.firstName, this.lastName});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    return data;
  }

  String toRawJason() => json.encode(toJson());
}
