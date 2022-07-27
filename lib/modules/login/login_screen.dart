import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/modules/home_screen.dart';
import 'package:hackathon/modules/login/cubit/states.dart';
import 'package:hackathon/modules/sign_up/sign_up_screen.dart';

import '../../shared/components/components.dart';
import 'cubit/cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => MainLoginCubit(),
      child: BlocConsumer<MainLoginCubit, MainLoginStates>(
        listener: (context, state) {
          if (state is UserLoginSuccessState) {
            defaultNavigatePush(context, const Home());
          }
        },
        builder: (context, state) {
          var cubit = MainLoginCubit.get(context);
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
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            child: Column(
                              children: [
                                const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                DefaultCardFormField(
                                  hintText: 'Email',
                                  textEditingController: emailController,
                                ),
                                DefaultCardFormField(
                                  hintText: 'Password',
                                  textEditingController: passwordController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                DefaultTextButton(
                                  text: 'login',
                                  onPressed: () {
                                    cubit.userLogin(
                                        email: emailController.text,
                                        password: passwordController.text);
                                  },
                                ),
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 25.0,),
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
                                        onPressed: () {defaultNavigatePush(context, const SignUpScreen());},
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
        },
      ),
    );
  }
}
