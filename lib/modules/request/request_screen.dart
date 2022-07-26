import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarAtAllScreens(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width < 1000 ?450 :800,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Column(
                          children: [
                            const Text(
                              'Request',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Image(
                                height: 250,
                                width: 250,
                                image: AssetImage('assets/images/dog_dog.png'),
                              ),
                            ),
                            const DefaultCardFormField(hintText: 'Name'),
                            const DefaultCardFormField(hintText: 'Category'),
                            Row(
                              children: const [
                                Expanded(
                                    child: DefaultCardFormField(
                                  hintText: 'Year',
                                )),
                                Expanded(
                                  child:
                                      DefaultCardFormField(hintText: 'Months'),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: DefaultCardFormField(
                                    hintText: 'Size',
                                  ),
                                ),
                                Expanded(
                                    child: DefaultCardFormField(
                                        hintText: 'Breed')),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                    child: DefaultCardFormField(
                                  hintText: 'Hear length',
                                )),
                                Expanded(
                                  child: DefaultCardFormField(
                                      hintText: 'Care & behaviour'),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                    child: DefaultCardFormField(
                                  hintText: 'house Trained',
                                )),
                                Expanded(
                                    child: DefaultCardFormField(
                                        hintText: 'Color')),
                              ],
                            ),
                            const Align(
                              alignment: AlignmentDirectional.bottomStart,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.0, top: 20),
                                child: Text(
                                  'Detect your current location',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const DefaultCardFormField(hintText: 'Location'),
                            const DefaultCardFormField(
                                hintText: 'Phone Number'),
                            const DefaultCardFormField(hintText: 'Description'),
                            const Align(
                              alignment: AlignmentDirectional.bottomStart,
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.0, top: 20),
                                child: Text(
                                  'Vaccinated (up to date)',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const DefaultTextButton(text: 'Send'),
                            const SizedBox(
                              height: 50,
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
