class FirstSectionDataModel {
  late final String title;
  late final String body;

  FirstSectionDataModel({required this.title, required this.body});

  FirstSectionDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
