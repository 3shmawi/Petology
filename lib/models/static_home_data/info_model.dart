class InfoData {
  late final String email;
  late final String location;
  late final String phone;
  late final String location2;

  InfoData({
    required this.email,
    required this.location,
    required this.phone,
    required this.location2,
  });

  InfoData.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    location = json['location'];
    phone = json['phone'];
    location2 = json['location2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['location'] = location;
    data['phone'] = phone;
    data['location2'] = location2;
    return data;
  }
}
