
class Filters {
  List<String>? breed;
  List<String>? ages;
  List<String>? size;
  List<String>? goodWith;
  Gender? gender;
  List<String>? colors;
  List<String>? hairLength;
  List<String>? behaviour;

  Filters(
      {this.breed,
        this.ages,
        this.size,
        this.goodWith,
        this.gender,
        this.colors,
        this.hairLength,
        this.behaviour});

  Filters.fromJson(Map<String, dynamic> json) {
    breed = json['breed'].cast<String>();
    ages = json['ages'].cast<String>();
    size = json['size'].cast<String>();
    goodWith = json['goodWith'].cast<String>();
    gender =
    json['gender'] != null ? Gender.fromJson(json['gender']) : null;
    colors = json['colors'].cast<String>();
    hairLength = json['hairLength'].cast<String>();
    behaviour = json['behaviour'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['breed'] = breed;
    data['ages'] = ages;
    data['size'] = size;
    data['goodWith'] = goodWith;
    if (gender != null) {
      data['gender'] = gender!.toJson();
    }
    data['colors'] = colors;
    data['hairLength'] = hairLength;
    data['behaviour'] = behaviour;
    return data;
  }
}

class Gender {
  int? male;
  int? female;

  Gender({this.male, this.female});

  Gender.fromJson(Map<String, dynamic> json) {
    male = json['male'];
    female = json['female'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['male'] = male;
    data['female'] = female;
    return data;
  }
}