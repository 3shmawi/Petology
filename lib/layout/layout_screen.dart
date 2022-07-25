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
              height: 143,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const AppBarBackgroundColor(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Petology',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                          child: Text(
                            'About us',
                            style: TextStyle(
                              color: Color(0xffc9c9c9),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: Color(0xffc9c9c9),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Services',
                            style: TextStyle(
                              color: Color(0xffc9c9c9),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const Text(
                          'Request',
                          style: TextStyle(
                            color: Color(0xffc9c9c9),
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.white, width: 1.5)),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                elevation: MaterialStateProperty.all(0)),
                            onHover: (v) {},
                            onLongPress: () {},
                            onPressed: () {},
                            child: const Text(
                              'Sign up',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(22)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(0)),
                          onHover: (v) {},
                          onLongPress: () {},
                          onPressed: () {},
                          child: const Text(
                            'Sign in',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 267.5),
                  child: Container(
                    width: 600,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Column(
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          margin: const EdgeInsets.all(20),
                          elevation: 4,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Password',
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 525,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                foregroundColor: MaterialStateProperty.all(
                                  const Color(0xff1A110E),
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(20)),
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff1A110E),
                                ),
                                elevation: MaterialStateProperty.all(5)),
                            onHover: (v) {},
                            onLongPress: () {},
                            onPressed: () {},
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
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
                            top: 30,
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
                          padding: const EdgeInsets.all(35.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15))),
                                      foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.all(18)),
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.deepPurple),
                                      elevation: MaterialStateProperty.all(0)),
                                  onHover: (v) {},
                                  onLongPress: () {},
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.facebook,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 30,),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                              const SizedBox(width: 40,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.black, width: 1.5)),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15))),
                                          foregroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.all(18)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white),
                                          elevation: MaterialStateProperty.all(0)),
                                      onHover: (v) {},
                                      onLongPress: () {},
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.g_translate,
                                          ),

                                          SizedBox(width: 30,),
                                          Text('Google'),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Image(
                  height: 300,
                  width: 300,
                  image: AssetImage(
                    'assets/images/dog_logo.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
