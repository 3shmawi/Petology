import 'package:flutter/material.dart';

import '../shared/components/components.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 60,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const AppBarBackgroundColor(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          color: Colors.white,
                          height: 80,
                          width: 80,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                        const Spacer(),
                        defaultTextAtAppBar(text: 'About us', onPressed: () {}),
                        defaultTextAtAppBar(
                            text: 'Categories', onPressed: () {}),
                        defaultTextAtAppBar(text: 'Services', onPressed: () {}),
                        defaultTextAtAppBar(text: 'Request', onPressed: () {}),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: defaultElevatedButton(
                              text: 'Sign up', onPressed: () {}),
                        ),
                        defaultElevatedButton(
                          text: 'Sign in',
                          onPressed: () {},
                          toggle: false,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
                          defaultCardFormField(hitText: 'Email'),
                          defaultCardFormField(hitText: 'Password'),
                          const SizedBox(
                            height: 20,
                          ),
                          defaultTextButton(text: 'login'),
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
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 25,
                              left: 25,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    'Or',
                                    style: TextStyle(
                                        color: Color(0xff1A110E), fontSize: 15),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1.5,
                                    color: const Color(0xff1A110E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                defaultSignWithCard(
                                    iconData: Icons.facebook,
                                    text: 'facebook',
                                    onPressed: () {}),
                                const SizedBox(
                                  width: 40,
                                ),
                                defaultSignWithCard(
                                    iconData: Icons.g_translate,
                                    text: 'Google',
                                    onPressed: () {},
                                    isThereBackgroundColor: false),
                              ],
                            ),
                          ),
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
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  const AppBarBackgroundColor(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 200.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultImageLegDog(
                          image: 'assets/images/icon_legs.png',
                        ),
                        defaultImageLegDog(
                          image: 'assets/images/icon_legs.png',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      defaultColumnOfTexts(
                        header: 'For any question',
                        text1: 'mohamedashmawy918@gmil.com',
                        iconData1: Icons.mail,
                        text2: '(2+)01025425044',
                        iconData2: Icons.phone,
                      ),
                      defaultColumnOfTexts(
                        header: 'We are waiting you',
                        text1: 'First settlement/Cairo',
                        iconData1: Icons.location_on,
                        text2: 'Cairo/Egypt',
                        iconData2: Icons.location_on,
                      ),
                      const Spacer(),
                      const Image(
                        alignment: AlignmentDirectional.bottomEnd,
                        height: 200,
                        width: 200,
                        image: AssetImage(
                          'assets/images/tamas.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget defaultTextAtAppBar(
      {required String text, required Function()? onPressed}) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffc9c9c9),
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget defaultElevatedButton({
    required String text,
    required Function()? onPressed,
    bool toggle = true,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: toggle ? Colors.transparent : Colors.white, width: 1.5)),
      child: ElevatedButton(
        onHover: (v) {
          // toggle = !toggle;
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
            backgroundColor: MaterialStateProperty.all(
                toggle ? Colors.white : Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: toggle ? Colors.black : Colors.white),
        ),
      ),
    );
  }

  Widget defaultCardFormField({
    required String hitText,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(20),
      elevation: 4,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hitText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }

  Widget defaultImageLegDog({required String image}) {
    return Image(
      height: 100,
      width: 100,
      color: Colors.white38,
      image: AssetImage(
        image,
      ),
    );
  }

  Widget defaultTextButton({
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
              foregroundColor: MaterialStateProperty.all(
                const Color(0xff1A110E),
              ),
              padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              backgroundColor: MaterialStateProperty.all(
                const Color(0xff1A110E),
              ),
              elevation: MaterialStateProperty.all(5)),
          onHover: (v) {},
          onLongPress: () {},
          onPressed: () {},
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget defaultSignWithCard({
    required IconData iconData,
    required String text,
    required Function()? onPressed,
    bool isThereBackgroundColor = true,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            border: Border.all(
                color: isThereBackgroundColor ? Colors.white : Colors.black)),
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: MaterialStateProperty.all(
                  !isThereBackgroundColor ? Colors.white : Colors.black),
              padding: MaterialStateProperty.all(const EdgeInsets.all(18)),
              backgroundColor: MaterialStateProperty.all(
                  isThereBackgroundColor ? Colors.deepPurple : Colors.white),
              elevation: MaterialStateProperty.all(0)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: isThereBackgroundColor ? Colors.white : Colors.black,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                text,
                style: TextStyle(
                    color:
                        isThereBackgroundColor ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget defaultColumnOfTexts({
    required String header,
    required String text1,
    required String text2,
    required IconData iconData1,
    required IconData iconData2,
  }) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
          Expanded(
            child: Row(
              children: [
                Icon(
                  iconData1,
                  color: Colors.white38,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text1,
                  style: const TextStyle(color: Colors.white38, fontSize: 20),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                iconData2,
                color: Colors.white38,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.white38, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
