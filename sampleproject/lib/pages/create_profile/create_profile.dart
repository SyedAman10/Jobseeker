import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({Key? key}) : super(key: key);

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
                  right: 250,
                  bottom: 0,
                ),
                child: Text(
                  'Emirates ID',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(10.0),
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
          ],
        )),
      ),
    );
  }
}
