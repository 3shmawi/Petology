import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class SharedByScreen extends StatelessWidget {
  const SharedByScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = 4;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarAtAllScreens(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          const AppBarBackgroundColor(),
                          const Image(
                              height: 300,
                              width: 300,
                              image: AssetImage('assets/images/ellipse.png')),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 200.0),
                            child: Stack(
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'assets/images/dog_with_flower.png'),
                                ),
                                Positioned(
                                  top: 210,
                                  bottom: 15,
                                  right: 20,
                                  child: Container(
                                    color: Colors.transparent,
                                    height: 120,
                                    width: 150,
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10,
                                      borderRadius: BorderRadius.circular(250),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_back_ios),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                          ),
                          buildPaddingPointer(num),
                        ],
                      ),
                    ),
                   defaultTextHeaders(context, text: 'Elsa',),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                      child: Row(
                        children: [
                          Text('Share by: ',
                              style: Theme.of(context).textTheme.headline5),
                          Text(
                            'Rawan tarek',
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const Spacer(),
                          const Icon(Icons.whatsapp, size: 30),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.call,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                      child: Text(
                        'Domestic Short Hair  Fredericton, NB',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.black),
                      ),
                    ),
                    buildPadding(context),
                   defaultTextHeaders(context, text: 'About',),
                    defaultText(
                      context,
                      text: 'HOUSE-TRAINED',
                      top: 20,
                    ),
                    defaultText(
                      context,
                      text: 'Yes',
                    ),
                    defaultText(
                      context,
                      text: 'HEALTH',
                      top: 20,
                    ),
                    defaultText(
                      context,
                      text: 'Vaccinations up to date, spayed / neutered.',
                    ),
                    defaultText(
                      context,
                      text: 'GOOD IN A HOME WITH',
                      top: 20,
                    ),
                    defaultText(
                      context,
                      text: 'Other cats.',
                    ),
                    defaultText(
                      context,
                      text: 'PREFERS A HOME WITHOUT',
                      top: 20,
                    ),
                    defaultText(
                      context,
                      text: 'Children.',
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                      child: Container(
                        padding: const EdgeInsets.only(
                            right: 20.0, left: 20, top: 5, bottom: 5),
                        alignment: AlignmentDirectional.centerStart,
                        color: Colors.grey[300],
                        child: Row(
                          children: [
                            const Icon(
                              Icons.notifications_none_outlined,
                              size: 50,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                'Petfinder recommends that you should always take reasonable security steps before making adabtion.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   defaultTextHeaders(context, text: 'Meet Elsa',),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20.0, left: 20, top: 20),
                      child: Text(
                        'Hi,\n\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea taki',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                   // const LastCategoriesInTheEndOfScreen(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPaddingPointer(int num) {
    return Padding(
                          padding: const EdgeInsets.only(
                              top: 400.0, right: 20, left: 20),
                          child: Align(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => CircleAvatar(
                                radius: 10,
                                backgroundColor: (num == index)
                                    ? Colors.white
                                    : Colors.white38,
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 20,
                              ),
                              itemCount: 5,
                            ),
                          ),
                        );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 20.0, left: 20, top: 5, bottom: 5),
                      alignment: AlignmentDirectional.centerStart,
                      height: 60,
                      color: Colors.grey[300],
                      child: Text(
                        'Adult  Female  Medium  Tabby (Brown / Chocolate)',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
  }

  Widget defaultText(context, {required String text, double top = 0}) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20, top: top),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget defaultTextHeaders(context,{required String text}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
