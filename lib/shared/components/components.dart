import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/modules/adaption/adaption_feed_dogs_screen.dart';
import 'package:hackathon/modules/login/login_screen.dart';
import 'package:hackathon/modules/sign_up/sign_up_screen.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final TextEditingController textEditingController;
  final String hintText;
  final double width;
  final Function()? onPressed;

  final bool showSuffix;

  const DefaultCardFormField(
      {required this.textEditingController,
      this.showSuffix = false,
      this.width = double.infinity,
      required this.hintText,
      this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        elevation: 4,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          controller: textEditingController,
          decoration: InputDecoration(
            suffixIcon: showSuffix
                ? IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.location_on,
                    ),
                  )
                : const Text(''),
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
          ),
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
  final Function()? onPressed;

  const DefaultTextButton(
      {required this.onPressed, required this.text, Key? key})
      : super(key: key);

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
          onPressed: onPressed,
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
  final String text;
  final Function()? onPressed;
  final bool isThereBackgroundColor;

  const DefaultSignWithCard(
      {this.isThereBackgroundColor = true,
      required this.text,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
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
              isThereBackgroundColor
                  ? Icon(
                      Icons.facebook,
                      color:
                          isThereBackgroundColor ? Colors.white : Colors.black,
                    )
                  : Icon(
                      Icons.g_mobiledata_outlined,
                      color:
                          isThereBackgroundColor ? Colors.white : Colors.black,
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

class DefaultFirstColumnOfTexts extends StatelessWidget {
  const DefaultFirstColumnOfTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 18.0, bottom: 15, right: 25),
                child: Text(
                  'For any question',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              DefaultImageLegDog(
                image: 'assets/images/icon_legs.png',
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                const Icon(
                  Icons.mail,
                  color: Colors.white38,
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'Email@petology.com',
                      query: encodeQueryParameters(<String, String>{
                        'Petology': 'شكرا لتواصلك, كيف يمكنني مساعدتك',
                      }),
                    );

                    launchUrl(emailLaunchUri);
                  },
                  child: const Text(
                    'Email@petology.com',
                    style: TextStyle(color: Colors.white38, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.white38,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '(+2)0123456789',
                style: TextStyle(color: Colors.white38, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DefaultSecondColumnOfTexts extends StatelessWidget {
  const DefaultSecondColumnOfTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 18.0, bottom: 15, right: 25),
                child: Text(
                  'We are waiting you',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              DefaultImageLegDog(
                image: 'assets/images/icon_legs.png',
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.white38,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'First settlement/Cairo',
                  style: TextStyle(color: Colors.white38, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.white38,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Cairo/Egypt',
                style: TextStyle(color: Colors.white38, fontSize: 20),
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
              DefaultFirstColumnOfTexts(),
              DefaultSecondColumnOfTexts(),
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
                      DefaultTextHeadersAtAppBar(
                          text: 'About us', onPressed: () {}),
                      DefaultTextHeadersAtAppBar(
                          text: 'Categories', onPressed: () {}),
                      DefaultTextHeadersAtAppBar(
                        text: 'Services',
                        onPressed: () {
                          defaultNavigatePush(context, const FeedDogsScreen());
                        },
                      ),
                      DefaultTextHeadersAtAppBar(
                          text: 'Request', onPressed: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DefaultElevatedButton(
                      text: 'Sign up',
                      onPressed: () {
                        defaultNavigatePush(context, const SignUpScreen());
                      }),
                ),
                DefaultElevatedButton(
                  text: 'Sign in',
                  onPressed: () {
                    defaultNavigatePush(context, const LoginScreen());
                    // showDialog<String>(
                    //   context: context,
                    //   builder: (BuildContext context) => AlertDialog(
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(15)),
                    //     actionsPadding:
                    //         const EdgeInsets.only(bottom: 10, right: 10),
                    //     title: const Center(
                    //       child: Text(
                    //         'Lets get this right ....',
                    //         style: TextStyle(
                    //             color: Colors.black,
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 25),
                    //       ),
                    //     ),
                    //     backgroundColor: Colors.white,
                    //     actions: <Widget>[
                    //       const Center(
                    //         child: Text(
                    //           'What kind of friend you looking for?',
                    //           style: TextStyle(
                    //             color: Colors.black,
                    //             fontSize: 20,
                    //           ),
                    //         ),
                    //       ),
                    //       const SizedBox(
                    //         height: 40,
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           DefaultElevatedCardCategory(
                    //             onPressed: () {},
                    //             kind: 'Dogs',
                    //             image: 'assets/images/icon_dog_at_category.png',
                    //           ),
                    //           const SizedBox(
                    //             width: 20,
                    //           ),
                    //           DefaultElevatedCardCategory(
                    //             onPressed: () {},
                    //             kind: 'Cats',
                    //             image: 'assets/images/icon_cat_at_category.png',
                    //           ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // );
                  },
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
          DefaultSignWithCard(text: 'facebook', onPressed: () {}),
          const SizedBox(
            width: 40,
          ),
          DefaultSignWithCard(
              text: 'Google', onPressed: () {}, isThereBackgroundColor: false),
        ],
      ),
    );
  }
}

class DefaultElevatedCardCategory extends StatelessWidget {
  final Function()? onPressed;
  final ValueChanged<bool>? onHover;
  final bool selected;
  final String kind;
  final String image;

  const DefaultElevatedCardCategory(
      {required this.onHover,
      required this.image,
      required this.kind,
      this.selected = false,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 1.5)),
        child: ElevatedButton(
          onHover: onHover,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
            backgroundColor: MaterialStateProperty.all(
                selected ? const Color(0xffFFE3C5) : Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
          onPressed: onPressed,
          child: Column(
            children: [
              Image(
                height: 100,
                width: 100,
                image: AssetImage(
                  image,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                kind,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultDropDownButton extends StatefulWidget {
  final String text;
  final String validateText;
  final List<String> items;
  String selectedValue;

   DefaultDropDownButton(
      {this.selectedValue = '',
      required this.text,
      required this.validateText,
      required this.items,
      Key? key})
      : super(key: key);

  @override
  State<DefaultDropDownButton> createState() => _DefaultDropDownButtonState();
}

class _DefaultDropDownButtonState extends State<DefaultDropDownButton> {


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: DropdownButtonFormField2(
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          //Add isDense true and zero Padding.
          //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.zero,

          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),
        isExpanded: true,
        hint: Text(
          widget.text,
          style: const TextStyle(fontSize: 14),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 30,
        buttonHeight: 60,
        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return widget.validateText;
          }
          return null;
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        onSaved: (value) {
          widget.selectedValue = value.toString();
        },
      ),
    );
  }
}

class DefaultButtonHasTextAndArrow extends StatelessWidget {
  final Color color;
  final String text;
  final Function()? onPresses;
  final double left;

  const DefaultButtonHasTextAndArrow(
      {required this.color,
      this.left = 85,
      required this.text,
      required this.onPresses,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresses,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 50),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: left),
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: color == Colors.white ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
            color: color == Colors.white ? Colors.black : Colors.white,
          )
        ],
      ),
    );
  }
}

class DefaultWidgetCardHavePhotoAndButton extends StatelessWidget {
  final String textName;
  final String textButton;
  final String image;
  final String textCaption;
  final Color color;
  final Color colorCard;

  const DefaultWidgetCardHavePhotoAndButton(
      {required this.colorCard,
      required this.textCaption,
      required this.textButton,
      required this.color,
      required this.textName,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: colorCard,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  image,
                ),
              ),
              Text(
                textName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: DefaultButtonHasTextAndArrow(
                  color: color,
                  left: 0,
                  text: textButton,
                  onPresses: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textCaption,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultJustDropDownButton extends StatefulWidget {
  final String text;
  final String validateText;
  final List<String> items;

  const DefaultJustDropDownButton(
      {required this.text,
      required this.validateText,
      required this.items,
      Key? key})
      : super(key: key);

  @override
  State<DefaultJustDropDownButton> createState() =>
      _DefaultJustDropDownButtonState();
}

class _DefaultJustDropDownButtonState extends State<DefaultJustDropDownButton> {
  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  hintText: widget.text,
                  hintStyle: const TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField2(
                decoration: InputDecoration(
                  //Add isDense true and zero Padding.
                  //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //Add more decoration as you want here
                  //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                ),
                isExpanded: true,
                hint: Text(
                  widget.validateText,
                  style: const TextStyle(fontSize: 14),
                ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 30,
                buttonHeight: 60,
                buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                items: widget.items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.';
                  }
                  return null;
                },
                onChanged: (value) {
                  //Do something when changing the item if you want.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: const Text('Submit Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future defaultNavigatePush(context, route) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => route));
}
