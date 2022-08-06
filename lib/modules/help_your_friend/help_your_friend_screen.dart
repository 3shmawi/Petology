import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class HelpYourFriendScreen extends StatelessWidget {
  const HelpYourFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var categoryController = TextEditingController();
    var locationController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppBarAtAllScreens(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Container(
                  width: 450,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    children: [
                      const Text(
                        'Help your friend',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Icon(
                          Icons.camera_alt,
                          size: 80,
                          color: Colors.black,
                        ),
                      ),
                      DefaultCardFormField(
                        hintText: 'Category',
                        textEditingController: categoryController,
                      ),
                      const Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 20),
                            child: Text(
                              'Detect your current location',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      DefaultCardFormField(
                        hintText: 'Location',
                        textEditingController: locationController,
                      ),
                      DefaultCardFormField(
                        hintText: 'Phone Number',
                        textEditingController: phoneController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextButton(
                        text: 'Send',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DefaultTextButton(
                        text: 'Call',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //const LastCategoriesInTheEndOfScreen(),
          ],
        ),
      ),
    );
  }
}
