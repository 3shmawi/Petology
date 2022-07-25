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

class DefaultDashLineWithTextOr extends StatelessWidget {
  const DefaultDashLineWithTextOr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Or',
              style: TextStyle(color: Color(0xff1A110E), fontSize: 15),
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
    );
  }
}

class DefaultTextHeadersAtAppBar extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  const DefaultTextHeadersAtAppBar(
      {required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
}

class DefaultElevatedButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool toggle;

  const DefaultElevatedButton(
      {required this.onPressed,
      required this.text,
      this.toggle = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class DefaultCardFormField extends StatelessWidget {
  final String hintText;

  const DefaultCardFormField({required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}

class DefaultImageLegDog extends StatelessWidget {
  final String image;

  const DefaultImageLegDog({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 50,
      width: 50,
      color: Colors.white38,
      image: AssetImage(
        image,
      ),
    );
  }
}

class DefaultTextButton extends StatelessWidget {
  final String text;

  const DefaultTextButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class DefaultSignWithCard extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Function()? onPressed;
  final bool isThereBackgroundColor;

  const DefaultSignWithCard(
      {this.isThereBackgroundColor = true,
      required this.iconData,
      required this.text,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class DefaultColumnOfTexts extends StatelessWidget {
  final String header;
  final String text1;
  final String text2;
  final IconData iconData1;
  final IconData iconData2;

  const DefaultColumnOfTexts(
      {required this.iconData2,
      required this.iconData1,
      required this.text2,
      required this.text1,
      required this.header,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, bottom: 15, right: 25),
                child: Text(
                  header,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              const DefaultImageLegDog(
                image: 'assets/images/icon_legs.png',
              ),
            ],
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
          const SizedBox(
            height: 10,
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

class LastCategoriesInTheEndOfScreen extends StatelessWidget {
  const LastCategoriesInTheEndOfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          const AppBarBackgroundColor(),
          Row(
            children: const [
              DefaultColumnOfTexts(
                header: 'For any question',
                text1: 'mohamedashmawy918@gmil.com',
                iconData1: Icons.mail,
                text2: '(2+)01025425044',
                iconData2: Icons.phone,
              ),
              DefaultColumnOfTexts(
                header: 'We are waiting you',
                text1: 'First settlement/Cairo',
                iconData1: Icons.location_on,
                text2: 'Cairo/Egypt',
                iconData2: Icons.location_on,
              ),
              Spacer(),
              Image(
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
    );
  }
}

class AppBarAtAllScreens extends StatelessWidget {
  const AppBarAtAllScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const AppBarBackgroundColor(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //wow
                const Padding(
                  padding: EdgeInsets.only(right: 120.0),
                  child: Image(
                    color: Colors.white,
                    height: 80,
                    width: 80,
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTextHeadersAtAppBar(text: 'About us', onPressed: () {}),
                      DefaultTextHeadersAtAppBar(
                          text: 'Categories', onPressed: () {}),
                      DefaultTextHeadersAtAppBar(text: 'Services', onPressed: () {}),
                      DefaultTextHeadersAtAppBar(text: 'Request', onPressed: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child:
                      DefaultElevatedButton(text: 'Sign up', onPressed: () {}),
                ),
                DefaultElevatedButton(
                  text: 'Sign in',
                  onPressed: () {},
                  toggle: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DefaultCardLoginWithFacebookAndGoogle extends StatelessWidget {
  const DefaultCardLoginWithFacebookAndGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultSignWithCard(
              iconData: Icons.facebook, text: 'facebook', onPressed: () {}),
          const SizedBox(
            width: 40,
          ),
          DefaultSignWithCard(
              iconData: Icons.g_translate,
              text: 'Google',
              onPressed: () {},
              isThereBackgroundColor: false),
        ],
      ),
    );
  }
}
