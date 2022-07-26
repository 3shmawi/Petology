import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
//jkjk
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarAtAllScreens(),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 178),
                    child: Container(
                      width: 450,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Column(
                        children: [
                          const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const DefaultCardFormField(hintText: 'Email'),
                          const DefaultCardFormField(hintText: 'Password'),
                          const SizedBox(
                            height: 20,
                          ),
                          const DefaultTextButton(text: 'login'),
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 25.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'forget password? ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      ?.copyWith(
                                        color: const Color(0xff1A110E),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          const DefaultDashLineWithTextOr(),
                          const DefaultCardLoginWithFacebookAndGoogle(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Didn\'t have an account? ',
                                style: TextStyle(fontSize: 10),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'sign up',
                                    style: TextStyle(fontSize: 12),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                      'assets/images/dog_logo.png',
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const LastCategoriesInTheEndOfScreen(),
          ],
        ),
      ),
    );
  }
}
