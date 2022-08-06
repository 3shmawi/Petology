class PetsNeedsModel {
  late final String imageUrl;
  late final String title;

  PetsNeedsModel({required this.imageUrl, required this.title});

  PetsNeedsModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageUrl'] = imageUrl;
    data['title'] = title;
    return data;
  }
}
