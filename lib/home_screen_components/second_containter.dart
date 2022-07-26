import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child: Image.asset('assets/images/dog 4.png')),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Text('About Petology',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                  ),),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset('assets/images/Icon material-pets left hand.png',
                          width: 300,
                          height: 300,
                          color: HexColor("#FFE3C5"),
                        ),
                      ),
                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
