import 'package:flutter/material.dart';

class clientSignup extends StatefulWidget {
  const clientSignup({ Key? key }) : super(key: key);

  @override
  State<clientSignup> createState() => _clientSignupState();
}

class _clientSignupState extends State<clientSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Text('Client Signup', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 24,),),
          )
        ]),
    );
  }
}