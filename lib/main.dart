import 'package:flutter/material.dart';
import 'package:hackathon/layout/layout_screen.dart';
import 'package:hackathon/modules/login/login_screen.dart';
import 'package:hackathon/shared/network/local/cache_helper.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';

import 'modules/adaption/adaption_feed_dogs_screen.dart';
import 'modules/adaption/info_about_shared_by_screen.dart';
import 'modules/filter/filter_screen.dart';
import 'modules/help_your_friend/help_your_friend_screen.dart';
import 'modules/home_screen.dart';
import 'modules/request/request_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();
  await CacheHelper.init();

  String? token = CacheHelper.getData(key: 'token');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
