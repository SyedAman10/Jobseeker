import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:sampleproject/pages/create_profile/create_profile2.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Create Profile',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                  right: 220,
                  bottom: 0,
                ),
                child: Text(
                  'Emirates ID',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 11, bottom: 11),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(58, 228, 219, 219),
                    filled: true,
                    hintText: 'Enter your ID Number ',
                    labelText: 'ID Number',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 11, bottom: 11),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(58, 228, 219, 219),
                    filled: true,
                    hintText: 'Enter expiration date of your ID Number ',
                    labelText: 'Expiration Date',
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                  right: 260,
                  bottom: 0,
                ),
                child: Text(
                  'Front',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(188, 188, 188, 1)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 125, right: 125),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: FloatingActionButton(
                onPressed: imagePickerOption,
                child: const Icon(Icons.add),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                  right: 260,
                  bottom: 0,
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(188, 188, 188, 1)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 125, right: 125),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: FloatingActionButton(
                onPressed: imagePickerOption,
                child: const Icon(Icons.add),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 11, bottom: 11),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(58, 228, 219, 219),
                    filled: true,
                    hintText: 'Enter your Passport Number ',
                    labelText: 'Passport Number',
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                  right: 260,
                  bottom: 0,
                ),
                child: Text(
                  'Front',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(188, 188, 188, 1)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 125, right: 125),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: FloatingActionButton(
                onPressed: imagePickerOption,
                child: const Icon(Icons.add),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  top: 5,
                  right: 260,
                  bottom: 0,
                ),
                child: Text(
                  'Back',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(188, 188, 188, 1)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 125, right: 125),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: FloatingActionButton(
                onPressed: imagePickerOption,
                child: const Icon(Icons.add),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CreateProfile2())));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                )),
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(35, 205, 176, 1),
                ),
              ),
            ),
            SizedBox(height: 40)
          ],
        )),
      ),
    );
  }
}
