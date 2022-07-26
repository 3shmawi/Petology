import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FifthContainer extends StatelessWidget {
  const FifthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      color: HexColor('#F1F1F1'),
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'How to take care of \n your friends',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#492F24"),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset('assets/images/Icon material-pets right hand .png',
                  width: 50,
                  height: 50,
                  color: HexColor("#FFE3C5"),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: ()
                    {
                      print('food');
                    },
                    child: Image.asset('assets/images/pet food.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      print('transporation');
                    },
                    child: Image.asset('assets/images/transport.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      print('toys');
                    },
                    child: Image.asset('assets/images/toys.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      print('bowls and cups');
                    },
                    child: Image.asset('assets/images/bowls.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: ()
                    {
                      print('inoculation');
                    },
                    child: Image.asset('assets/images/inoculation.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      print('sleeping area');
                    },
                    child: Image.asset('assets/images/sleeping area.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      print('vitamins');
                    },
                    child: Image.asset('assets/images/vitamins.png',
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
    );
  }
}
