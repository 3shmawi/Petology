import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      color: HexColor("#56392D"),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                const Text('Not only pepole \nneed a house',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 300,
                  child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 85),
                          child: const Text(
                            "Help them",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Colors.black,
                      )
                    ],
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(300, 50),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
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
                  child:
                  Image.asset('assets/images/Ellipse 2.png')),
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
                    child: Image.asset('assets/images/dog 3.png')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
