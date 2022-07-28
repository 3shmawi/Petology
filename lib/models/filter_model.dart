// To parse this JSON data, do
//
//     final filters = filtersFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Filters {
  Filters({
    required this.breed,
    required this.ages,
    required this.size,
    required this.goodWith,
    required this.gender,
    required this.colors,
    required this.hairLength,
    required this.behaviour,
  });

  final List<String> breed;
  final List<String> ages;
  final List<String> size;
  final List<String> goodWith;
  final Gender gender;
  final List<String> colors;
  final List<String> hairLength;
  final List<String> behaviour;

  Filters copyWith({
    required List<String> breed,
    required List<String> ages,
    required List<String> size,
    required List<String> goodWith,
    required Gender gender,
    required List<String> colors,
    required List<String> hairLength,
    required List<String> behaviour,
  }) =>
      Filters(
        breed: breed,
        ages: ages,
        size: size,
        goodWith: goodWith,
        gender: gender,
        colors: colors,
        hairLength: hairLength,
        behaviour: behaviour,
      );

  factory Filters.fromRawJson(String str) => Filters.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Filters.fromJson(Map<String, dynamic> json) => Filters(
    breed: List<String>.from(json["breed"].map((x) => x)),
    ages: List<String>.from(json["ages"].map((x) => x)),
    size: List<String>.from(json["size"].map((x) => x)),
    goodWith: List<String>.from(json["goodWith"].map((x) => x)),
    gender: Gender.fromJson(json["gender"]),
    colors: List<String>.from(json["colors"].map((x) => x)),
    hairLength: List<String>.from(json["hairLength"].map((x) => x)),
    behaviour: List<String>.from(json["behaviour"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "breed": List<dynamic>.from(breed.map((x) => x)),
    "ages": List<dynamic>.from(ages.map((x) => x)),
    "size": List<dynamic>.from(size.map((x) => x)),
    "goodWith": List<dynamic>.from(goodWith.map((x) => x)),
    "gender": gender.toJson(),
    "colors": List<dynamic>.from(colors.map((x) => x)),
    "hairLength": List<dynamic>.from(hairLength.map((x) => x)),
    "behaviour": List<dynamic>.from(behaviour.map((x) => x)),
  };
}

class Gender {
  Gender({
    required this.male,
    required this.female,
  });

  final int male;
  final int female;

  Gender copyWith({
    required int male,
    required int female,
  }) =>
      Gender(
        male: male,
        female: female,
      );

  factory Gender.fromRawJson(String str) => Gender.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
    male: json["male"],
    female: json["female"],
  );

  Map<String, dynamic> toJson() => {
    "male": male,
    "female": female,
  };
}