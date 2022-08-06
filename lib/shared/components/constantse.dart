
 import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon/models/static_home_data/info_model.dart';

String? token;

InfoData? infoData;


 Image imageFromBase64String(String base64String) {
  return Image.memory(base64Decode(base64String));
 }