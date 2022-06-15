import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sampleproject/pages/homepage/homepage.dart';
import 'package:sampleproject/pages/signup/signup.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: signupPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.teal,
      ),
    );
  }
}

// class Auth extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Login/Register'),
//           onPressed: () async {
//             //http here
//             final signcode = await SmsAutoFill().getAppSignature;
//             print(signcode);
//             Navigator.push(context, MaterialPageRoute(builder: (c) => Otp()));
//           },
//         ),
//       ),
//     );
//   }
// }
