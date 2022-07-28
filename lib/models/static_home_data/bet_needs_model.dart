import 'dart:convert';

class BetNeedsModel {
  String? imageUrl;
  String? title;

  BetNeedsModel({this.imageUrl, this.title});

  BetNeedsModel.fromJson(Map<String, dynamic> json) {
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
