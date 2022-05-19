import 'package:flutter/material.dart';
import 'package:sampleproject/pages/otp_screen/otp_screen.dart';

class signupPage extends StatefulWidget {
  signupPage({Key? key}) : super(key: key);

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Jobseeker Sign up',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: Icon(Icons.arrow_back_ios_outlined),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: SizedBox(),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.blue, Colors.purple])),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'Answer the questions below in order to',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    top: 5,
                  ),
                  child: Text(
                    'find the best job for you',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 11, bottom: 11),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(58, 228, 219, 219),
                        filled: true,
                        hintText: 'Enter Your First Name ',
                        labelText: 'First Name',
                        hoverColor: Color.fromRGBO(35, 205, 176, 1)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, bottom: 11, top: 11),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: 'Enter Your Last Name',
                      labelText: 'Last Name',
                      hoverColor: Color.fromRGBO(35, 205, 176, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, bottom: 11, top: 11),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: 'abc@gmail.com',
                      labelText: 'E-mail',
                      hoverColor: Color.fromRGBO(35, 205, 176, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 11, bottom: 11, left: 25, right: 25),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      hoverColor: Color.fromRGBO(35, 205, 176, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 11, bottom: 11),
                  child: TextFormField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: 'Enter Your Mobile Number',
                      labelText: 'Mobile Number ',
                      hoverColor: Color.fromRGBO(35, 205, 176, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Otp())));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
