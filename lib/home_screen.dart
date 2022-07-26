import 'package:flutter/material.dart';
import 'package:hackathon/shared/components/appbar_components.dart';

import 'home_screen_components/fifth_container.dart';
import 'home_screen_components/first_container.dart';
import 'home_screen_components/fourth_containter.dart';
import 'home_screen_components/second_containter.dart';
import 'home_screen_components/third_containter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FirstContainer(),
            SecondContainer(),
            ThirdContainer(),
            FourthContainer(),
            FifthContainer(),
          ],
        ),
      ),
    );
  }
}
