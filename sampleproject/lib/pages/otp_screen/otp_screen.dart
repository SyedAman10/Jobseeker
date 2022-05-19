import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

import './../create_profile/create_profile.dart';

class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  void initState() {
    super.initState();
    _listenOtp();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'OTP VERIFICATION',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: PinFieldAutoFill(
              codeLength: 4,
              onCodeChanged: (val) {
                print(val);
              },
            ),
          ),
          SizedBox(height: 40),
          new ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => CreateProfile()));
            },
            child: Text('Next'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(35, 205, 176, 1.0)),
            ),
          )
        ]),
      ),
    );
  }

  void _listenOtp() async {
    await SmsAutoFill().listenForCode;
  }
}
