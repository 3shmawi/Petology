class FindModel {
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
  late final String category;
  late final User user;

  FindModel(
      {required this.id,
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
      required this.category,
      required this.user});

  FindModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'].cast<String>();
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
    category = json['category'];
    user = (json['user'] != null ? User.fromJson(json['user']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
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
    data['category'] = category;
    data['user'] = user.toJson();
    return data;
  }
}

class User {
  late final String firstName;
  late final String lastName;

  User({required this.firstName, required this.lastName});

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
}
