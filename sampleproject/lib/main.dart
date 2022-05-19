import 'package:flutter/material.dart';
import 'package:sampleproject/pages/client_signup/clientsignup.dart';
import 'package:sampleproject/pages/homepage/homepage.dart';
import 'package:sampleproject/pages/signup/signup.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: clientSignup(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins',),
      
    );
  }
}