import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/login/login_screen.dart';

import '../../shared/components/components.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var rePasswordController = TextEditingController();
    var countryController = TextEditingController();
    var phoneController = TextEditingController();

    return BlocProvider(
      create: (context) => MainRegisterCubit(),
      child: BlocConsumer<MainRegisterCubit, MainRegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MainRegisterCubit.get(context);
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  const AppBarAtAllScreens(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(100.0),
                            child: Stack(
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
                                        border:
                                            Border.all(color: Colors.black, width: 2)),
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
                                        DefaultCardFormField(
                                          hintText: 'First Name',
                                          textEditingController: firstNameController,
                                        ),
                                        DefaultCardFormField(
                                          hintText: 'Last Name',
                                          textEditingController: lastNameController,
                                        ),
                                        DefaultCardFormField(
                                          hintText: 'Email',
                                          textEditingController: emailController,
                                        ),
                                        DefaultCardFormField(
                                          hintText: 'Password',
                                          textEditingController: passwordController,
                                        ),
                                        DefaultCardFormField(
                                          hintText: 'Re_Enter Password',
                                          textEditingController: rePasswordController,
                                        ),
                                        DefaultCardFormField(
                                          hintText: 'Phone',
                                          textEditingController: phoneController,
                                        ),
                                        const DefaultDropDownButton(
                                          validateText: 'invalid',
                                          items: [
                                            'Egypt',
                                            'Ghana',
                                            'Zimpapwi',
                                            'Ghenea',
                                            'Kotphowar',
                                            'khogho',
                                            'Morcco',
                                            'Katar',
                                            'Tounis',
                                            'Arab Suaidia',
                                          ],
                                          text: 'Country',
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        DefaultTextButton(
                                          text: 'sign up',
                                          onPressed: () {
                                            cubit.userRegister(
                                              country: countryController.text,
                                              email: emailController.text,
                                              firstName: firstNameController.text,
                                              lastName: lastNameController.text,
                                              password: passwordController.text,
                                              phone: phoneController.text,
                                            );
                                          },
                                        ),
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
                                                onPressed: () {
                                                  defaultNavigatePush(
                                                      context, const LoginScreen());
                                                },
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
                          ),

                          const LastCategoriesInTheEndOfScreen(),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
