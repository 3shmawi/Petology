import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var descriptionController = TextEditingController();
    var colorController = TextEditingController();
    var locationController = TextEditingController();
    var nameController = TextEditingController();
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
                        width: MediaQuery.of(context).size.width < 1000
                            ? 450
                            : 800,
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
                            DefaultCardFormField(
                              hintText: 'Name',
                              textEditingController: nameController,
                            ),
                            const DefaultDropDownButton(
                              text: 'Category',
                              items: ['', '', ''],
                              validateText: 'Invalid Value',
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: DefaultDropDownButton(
                                      text: 'Year',
                                      validateText: 'Invalid Value',
                                      items: ['1', '2', '3']),
                                ),
                                Expanded(
                                  child: DefaultDropDownButton(
                                      text: 'Months',
                                      validateText: 'Invalid Value',
                                      items: ['Jan', 'Feb', 'Mar']),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                    child: DefaultDropDownButton(
                                  text: 'Size',
                                  items: ['', '', ''],
                                  validateText: 'Invalid Value',
                                )),
                                Expanded(
                                    child: DefaultDropDownButton(
                                  text: 'Breed',
                                  items: ['', '', ''],
                                  validateText: 'Invalid Value',
                                )),
                              ],
                            ),
                            Row(
                              children: const [
                                Expanded(
                                    child: DefaultDropDownButton(
                                  text: 'Hair Length',
                                  items: ['', '', ''],
                                  validateText: 'Invalid Value',
                                )),
                                Expanded(
                                    child: DefaultDropDownButton(
                                  text: 'Care & behavior',
                                  items: ['', '', ''],
                                  validateText: 'Invalid Value',
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                    child: DefaultDropDownButton(
                                  text: 'House Train',
                                  items: ['', '', ''],
                                  validateText: 'Invalid Value',
                                )),
                                Expanded(
                                    child: DefaultCardFormField(
                                  hintText: 'Color',
                                  textEditingController: colorController,
                                )),
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
                            DefaultCardFormField(
                              hintText: 'Location',
                              textEditingController: locationController,
                            ),
                            DefaultCardFormField(
                              hintText: 'Phone Number',
                              textEditingController: phoneController,
                            ),
                            DefaultCardFormField(
                              hintText: 'Description',
                              textEditingController: descriptionController,
                            ),
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
                            DefaultTextButton(
                              text: 'Send',
                              onPressed: () {},
                            ),
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
