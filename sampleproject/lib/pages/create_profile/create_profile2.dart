import 'dart:io';

import 'package:flutter/material.dart';

class CreateProfile2 extends StatefulWidget {
  const CreateProfile2({Key? key}) : super(key: key);

  @override
  State<CreateProfile2> createState() => _CreateProfile2State();
}

class _CreateProfile2State extends State<CreateProfile2> {
  static final List<String> items = [
    " App Developer",
    ' Web Developer',
    'Android Developer'
  ];
  String value = items.first;
  static final List<String> languages = [" UAE", ' Lebanon', 'Turkey'];
  String language = languages.first;

  final formKey = GlobalKey<FormState>();

  // final shifts = [' Day', ' Night'];
  // final languages = ["","Mandarin Chinese","Spanish","English","Hindi","Urdu","Arabic","Bengali","Portuguese","Russian","Japanese",
  // "German","Javanese","Punjabi","Wu","French","Telugu","Vietnamese","Marathi","Korean","Tamil","Italian","Turkish","Cantonese/Yue"] ;
  // String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 27),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 220,
                    bottom: 0,
                  ),
                  child: Text(
                    'Experience',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 220,
                    bottom: 0,
                  ),
                  child: Text(
                    'Latest Role',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 270,
                    bottom: 0,
                  ),
                  child: Text(
                    'Role*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                  width: 400,
                  margin:
                      EdgeInsets.only(top: 5, left: 22, right: 22, bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(58, 228, 219, 219),
                  ),
                  child: buildDropdown()),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 205,
                    bottom: 0,
                  ),
                  child: Text(
                    'Project Title*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 5, bottom: 11),
                  child: TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Please enter Project Title';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: ' Project Title ',
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 10,
                    right: 235,
                    bottom: 0,
                  ),
                  child: Text(
                    'Location*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                  width: 400,
                  margin:
                      EdgeInsets.only(top: 5, right: 22, left: 22, bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(58, 228, 219, 219),
                  ),
                  child: locationDropdown()),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 150,
                    bottom: 0,
                  ),
                  child: Text(
                    'Key Responsibilites*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 11, bottom: 11),
                  child: TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    maxLines: 10,
                    maxLength: 300,
                    decoration: InputDecoration(
                      hintText: 'Enter Description',
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 190,
                    bottom: 0,
                  ),
                  child: Text(
                    'Role Duration*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor:
                                        Color.fromARGB(58, 228, 219, 219),
                                    filled: true,
                                    hintText: 'From'),
                              ),
                            ),
                            Expanded(flex: 4, child: Text('From'))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Color.fromARGB(58, 228, 219, 219),
                                filled: true,
                                hintText: 'Till',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 20,
                    right: 210,
                    bottom: 0,
                  ),
                  child: Text(
                    'Rate per Day',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 5,
                    right: 185,
                    bottom: 0,
                  ),
                  child: Text(
                    'Your daily rate*',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(188, 188, 188, 1)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 5, bottom: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Please enter daily rate';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(58, 228, 219, 219),
                      filled: true,
                      hintText: ' 0.0 AED ',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    final isValidForm = formKey.currentState!.validate();
                    if (isValidForm) {}
                    ;
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
              ),
              SizedBox(height: 40)
            ],
          )),
        ),
      ),
    );
  }

  Widget buildDropdown() => DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                  child: Text(
                    item,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  value: item,
                ),
              )
              .toList(),
          onChanged: (value) => setState(() {
            this.value = value!;
          }),
        ),
      );
  Widget locationDropdown() => DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: language,
          items: languages
              .map(
                (dropdown) => DropdownMenuItem<String>(
                  child: Text(
                    dropdown,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  value: dropdown,
                ),
              )
              .toList(),
          onChanged: (language) => setState(() {
            this.language = language!;
          }),
        ),
      );
}
