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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => CreateProfile())));
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
            ]),
      ),
    );
  }

  void _listenOtp() async {
    await SmsAutoFill().listenForCode;
  }
}
