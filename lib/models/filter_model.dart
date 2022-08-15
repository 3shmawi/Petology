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
  late final List<String> breed;
  late final List<String> ages;
  late final List<String> size;
  late final List<String> goodWith;
  late final Gender gender;
  late final List<String> colors;
  late final List<String> hairLength;
  late final List<String> behaviour;

  Filters.fromJson(Map<String, dynamic> json){
    breed = List.castFrom<dynamic, String>(json['breed']);
    ages = List.castFrom<dynamic, String>(json['ages']);
    size = List.castFrom<dynamic, String>(json['size']);
    goodWith = List.castFrom<dynamic, String>(json['goodWith']);
    gender = Gender.fromJson(json['gender']);
    colors = List.castFrom<dynamic, String>(json['colors']);
    hairLength = List.castFrom<dynamic, String>(json['hairLength']);
    behaviour = List.castFrom<dynamic, String>(json['behaviour']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['breed'] = breed;
    data['ages'] = ages;
    data['size'] = size;
    data['goodWith'] = goodWith;
    data['gender'] = gender.toJson();
    data['colors'] = colors;
    data['hairLength'] = hairLength;
    data['behaviour'] = behaviour;
    return data;
  }
}

class Gender {
  Gender({
    required this.male,
    required this.female,
  });
  late final int male;
  late final int female;

  Gender.fromJson(Map<String, dynamic> json){
    male = json['male'];
    female = json['female'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['male'] = male;
    data['female'] = female;
    return data;
  }
}