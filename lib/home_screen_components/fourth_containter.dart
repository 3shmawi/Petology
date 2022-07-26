import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FourthContainer extends StatefulWidget {
  const FourthContainer({Key? key}) : super(key: key);

  @override
  State<FourthContainer> createState() => _FourthContainerState();
}

class _FourthContainerState extends State<FourthContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children:[
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Our friends who \n looking for a house',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                InkWell(
                  onTap: () {
                    setState( () {
                      print('cat1');
                    });
                  },
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: HexColor('#492F24'))),
                    child: Column(
                      children: [
                        Image.asset('assets/images/cat 1.png',
                          height: 200,
                          width: 150,
                        ),
                        Text('Caty',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#492F24'),
                          )
                          ,),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: HexColor("#492F24"),
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide( color: HexColor("#FFE3C5") )
                                    )
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    setState( () {
                      print('dog 4');
                    });
                  },
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: HexColor('#492F24'))),
                    child: Column(
                      children: [
                        Image.asset('assets/images/dog 4.png',
                          height: 200,
                          width: 150,
                        ),
                        Text('Elsa',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#492F24'),
                          )
                          ,),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: HexColor("#492F24"),
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide( color: HexColor("#FFE3C5") )
                                    )
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    setState( () {
                      print('dog 5');
                    });
                  },
                  child: Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                        Border.all(color: HexColor('#492F24'))),
                    child: Column(
                      children: [
                        Image.asset('assets/images/dog 5.png',
                          height: 200,
                          width: 150,
                        ),
                        Text('Doby',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#492F24'),
                          )
                          ,),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            child: Text(
                              "Read more",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: HexColor("#492F24"),
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide( color: HexColor("#FFE3C5") )
                                    )
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Text(
                        "Show more",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor("#FFE3C5"),
                        ),
                      ),

                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined,
                    size: 20,
                    color: HexColor("#FFE3C5"),
                  )
                ],
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 50),
                primary: HexColor("#492F24"),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
