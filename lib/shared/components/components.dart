import 'package:flutter/material.dart';

class AppBarBackgroundColor extends StatelessWidget {
  const AppBarBackgroundColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff56392D),
            Color(0xff483026),
            Color(0xff422C23),
            Color(0xff33221B),
            Color(0xff271A15),
            Color(0xff1A110E),
            Color(0xff110B09),
            Colors.black,
          ],
        ),
      ),
    );
  }
}