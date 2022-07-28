import 'dart:convert';

class FindBetsByIdModel {
  int? id;
  String? name;
  List<String>? image;
  int? year;
  int? month;
  String? size;
  String? breed;
  bool? gender;
  String? hairLength;
  String? color;
  String? careBehavior;
  bool? houseTrained;
  String? description;
  String? location;
  String? phone;
  bool? vaccinated;
  int? categoryId;
  int? userId;
  User? user;
  String? category;

  FindBetsByIdModel(
      {this.id,
      this.name,
      this.image,
      this.year,
      this.month,
      this.size,
      this.breed,
      this.gender,
      this.hairLength,
      this.color,
      this.careBehavior,
      this.houseTrained,
      this.description,
      this.location,
      this.phone,
      this.vaccinated,
      this.categoryId,
      this.userId,
      this.user,
      this.category});

  FindBetsByIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'] != null ? List<String>.from(json['image']) : null;
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
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (image != null) {
      data['image'] = image!.map((e) => e.toString()).toList();
    } else {
      data['image'] = null;
    }
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
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['category'] = category;
    return data;
  }
  String toRawJason() => json.encode(toJson());
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
