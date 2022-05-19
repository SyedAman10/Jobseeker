import 'package:flutter/material.dart';
import 'package:sampleproject/pages/homepage/homepage.dart';
import 'package:sms_autofill/sms_autofill.dart';

import './pages/otp_screen/otp_screen.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
      debugShowCheckedModeBanner: false,
      title: 'Sign Up',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login/Register'),
          onPressed: () async {
            //http here
            final signcode = await SmsAutoFill().getAppSignature;
            print(signcode);
            Navigator.push(context, MaterialPageRoute(builder: (c) => Otp()));
          },
        ),
      ),
    );
  }
}
