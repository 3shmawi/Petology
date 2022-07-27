import 'package:flutter/material.dart';

import '../shared/components/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarAtAllScreens(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      width: double.infinity,
                      color: const Color(0xff56392D),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(
                              children: [
                                const Text(
                                  'Not only pepole \nneed a house',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: 300,
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the debugPrinting and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown debugPrinter took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(300, 50),
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 85),
                                          child: Text(
                                            "Help them",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 20,
                                        color: Colors.black,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SizedBox(
                                  width: 700,
                                  height: 300,
                                  child: Image.asset(
                                      'assets/images/Ellipse 2.png')),
                              Positioned(
                                bottom: 75,
                                child: Container(
                                  color: Colors.transparent,
                                  height: 75,
                                  width: 200,
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(250),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: SizedBox(
                                    width: 500,
                                    height: 500,
                                    child:
                                        Image.asset('assets/images/dog 3.png')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SizedBox(
                                  width: 700,
                                  height: 300,
                                  child: Image.asset(
                                      'assets/images/Ellipse 2.png')),
                              Positioned(
                                bottom: 75,
                                child: Container(
                                  color: Colors.transparent,
                                  height: 75,
                                  width: 200,
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(250),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: SizedBox(
                                    width: 500,
                                    height: 500,
                                    child:
                                        Image.asset('assets/images/dog 4.png')),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(
                              children: [
                                const Text(
                                  'About Petology',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 300,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/Icon material-pets left hand.png',
                                          width: 300,
                                          height: 300,
                                          color: const Color(0xffFFE3C5),
                                        ),
                                      ),
                                      const Text(
                                        'Lorem Ipsum is simply dummy text of the debugPrinting and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown debugPrinter took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      color: const Color(0xffF1F1F1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Lets get this right .... ',
                                    style: TextStyle(
                                      color: Color(0xff492F24),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Icon material-pets right hand .png',
                                  width: 50,
                                  height: 50,
                                  color: const Color(0xffFFE3C5),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text('What kind of friend you looking for?',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff492F24),
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      debugPrint('hawhaw');
                                    });
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xff492F24))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/Icon dog.png',
                                          height: 100,
                                          width: 100,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          'Dogs',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      debugPrint('mewmew');
                                    });
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xff492F24))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/Icon cat.png',
                                          height: 100,
                                          width: 100,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          'Cats',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 600,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Our friends who \n looking for a house',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff492F24),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Icon material-pets right hand .png',
                                  width: 50,
                                  height: 50,
                                  color: const Color(0xffFFE3C5),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      debugPrint('cat1');
                                    });
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xff492F24))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/cat 1.png',
                                          height: 200,
                                          width: 150,
                                        ),
                                        const Text(
                                          'Caty',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(
                                                  Colors.white,
                                                ),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                        side: const BorderSide(
                                                            color: Color(
                                                                0xffFFE3C5))))),
                                            child: const Text(
                                              "Read more",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff492F24),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      debugPrint('dog 4');
                                    });
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xff492F24))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/dog 4.png',
                                          height: 200,
                                          width: 150,
                                        ),
                                        const Text(
                                          'Elsa',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(
                                                  Colors.white,
                                                ),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                        side: const BorderSide(
                                                            color: Color(
                                                                0xffFFE3C5))))),
                                            child: const Text(
                                              "Read more",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff492F24),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      debugPrint('dog 5');
                                    });
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xff492F24))),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/images/dog 5.png',
                                          height: 200,
                                          width: 150,
                                        ),
                                        const Text(
                                          'Doby',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff492F24),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(
                                                  Colors.white,
                                                ),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(18.0),
                                                        side: const BorderSide(
                                                            color: Color(
                                                                0xffFFE3C5))))),
                                            child: const Text(
                                              "Read more",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff492F24),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(300, 50),
                                primary: const Color(0xff492F24),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 90),
                                      child: Text(
                                        "Show more",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffFFE3C5),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                    color: Color(0xffFFE3C5),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500,
                      color: const Color(0xffF1F1F1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'How to take care of \n your friends',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff492F24),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/Icon material-pets right hand .png',
                                  width: 50,
                                  height: 50,
                                  color: const Color(0xffFFE3C5),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      debugPrint('food');
                                    },
                                    child: Image.asset(
                                      'assets/images/pet food.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      debugPrint('transporation');
                                    },
                                    child: Image.asset(
                                      'assets/images/transport.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      debugPrint('toys');
                                    },
                                    child: Image.asset(
                                      'assets/images/toys.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      debugPrint('bowls and cups');
                                    },
                                    child: Image.asset(
                                      'assets/images/bowls.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      debugPrint('inoculation');
                                    },
                                    child: Image.asset(
                                      'assets/images/inoculation.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      debugPrint('sleeping area');
                                    },
                                    child: Image.asset(
                                      'assets/images/sleeping area.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      debugPrint('vitamins');
                                    },
                                    child: Image.asset(
                                      'assets/images/vitamins.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
  }
}
