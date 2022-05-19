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
    );
  }
}
