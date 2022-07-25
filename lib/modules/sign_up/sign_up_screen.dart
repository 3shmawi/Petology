import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarAtAllScreens(),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                const Image(
                  height: 60,
                  width: 60,
                  color: Colors.black,
                  image: AssetImage(
                    'assets/images/icon_legs_brown.png',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    width: 450,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Column(
                      children: [
                        const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const DefaultCardLoginWithFacebookAndGoogle(),
                        const DefaultDashLineWithTextOr(),
                        const DefaultCardFormField(hintText: 'First Name'),
                        const DefaultCardFormField(hintText: 'Last Name'),
                        const DefaultCardFormField(hintText: 'Email'),
                        const DefaultCardFormField(hintText: 'Password'),
                        const DefaultCardFormField(hintText: 'Re_Enter Password'),
                        const DefaultCardFormField(hintText: 'Country'),
                        const SizedBox(
                          height: 20,
                        ),
                        const DefaultTextButton(text: 'sign up'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(fontSize: 15),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'login',
                                  style: TextStyle(fontSize: 18),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            const Spacer(),
            const LastCategoriesInTheEndOfScreen(),
          ],
        ),
      ),
    );
  }
}
