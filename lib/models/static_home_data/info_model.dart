class InfoData {
  String? email;
  String? location;
  String? phone;
  String? location2;

  InfoData({this.email, this.location, this.phone, this.location2});

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
    data['phone'] = this.phone;
    data['location2'] = location2;
    return data;
  }
}