import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarComponents extends StatelessWidget {
  AppBarComponents({Key? key}) : super(key: key);
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#56392D"),
      elevation: 0,
      title: Image.asset(
        'assets/images/logo.png',
        width: 110,
        height: 110,
      ),
      automaticallyImplyLeading: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'About us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 450,
              ),
              ElevatedButton(
                child: Text("Sign up"),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: isSelected ? Colors.brown : Colors.white,
                  onPrimary: !isSelected ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: isSelected ? Colors.brown : Colors.white,
                  onPrimary: !isSelected ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
