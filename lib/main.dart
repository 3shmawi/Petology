import 'package:flutter/material.dart';
import 'package:hackathon/home_screen.dart';
import 'package:hackathon/layout/layout_screen.dart';
import 'package:hackathon/modules/login/login_screen.dart';

import 'modules/adaption/adaption_feed_dogs_screen.dart';
import 'modules/adaption/info_about_shared_by_screen.dart';
import 'modules/help_your_friend/help_your_friend_screen.dart';
import 'modules/request/request_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
