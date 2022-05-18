import 'package:flutter/material.dart';

class signupPage extends StatefulWidget {
  signupPage({Key? key}) : super(key: key);

  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle:  true,
        
        title: Text('Jobseeker Sign up', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
         shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
        
        
      ),
    ),
    
    leading: Icon(Icons.arrow_back_ios_outlined),
    
    bottom: PreferredSize( preferredSize: Size.fromHeight(75), child: SizedBox(), ),
     flexibleSpace: Container(
          
           decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomLeft,
                       end: Alignment.topRight, colors: [Colors.blue, Colors.purple])),
         ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            
            
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text('Answer the questions below in order to', style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w100),
                     ),
                ),
                
              ),
               Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5,),
                  child: Text('find the best job for you', style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w100),
                     ),
                ),
                
              ),
              SizedBox(height: 20,),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     fillColor: Color.fromARGB(58, 228, 219, 219),
                     filled: true,
                     hintText: 'Enter Your First Name ', 
                     labelText: 'First Name',
                     
                     
      
                   ),
                   
                 ),
               ),
             ),
              SizedBox(height: 5,),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     fillColor: Color.fromARGB(58, 228, 219, 219),
                     filled: true,
                     hintText: 'Enter Your Last Name', 
                     labelText: 'Last Name',
                     
                     
      
                   ),
                   
                 ),
               ),
             ),
              SizedBox(height: 5,),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     fillColor: Color.fromARGB(58, 228, 219, 219),
                     filled: true,
                     hintText: 'abc@gmail.com', 
                     labelText: 'E-mail',
                     
                     
      
                   ),
                   
                 ),
               ),
             ),
              SizedBox(height: 5,),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     fillColor: Color.fromARGB(58, 228, 219, 219),
                     filled: true,
                     hintText: 'Enter Your Password', 
                     labelText: 'Password',
                     
                     
      
                   ),
                   
                 ),
               ),
             ),
              SizedBox(height: 5,),
             Container(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: TextFormField(
                   keyboardType: TextInputType.numberWithOptions(),
                   decoration: InputDecoration(
                     fillColor: Color.fromARGB(58, 228, 219, 219),
                     filled: true,
                     
                     hintText: 'Enter Your Mobile Number', 
                     labelText: 'Mobile Number ',
                     
                     
      
                   ),
                   
                 ),
               ),
             ),
             SizedBox(height: 20,),
            RaisedButton(
                child: Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                onPressed: () {},
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                color: Color.fromARGB(255, 138, 192, 106),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
          SizedBox(height: 20,),
              
            ],
          ),
        ),
      ),
      
    


        
    
      
      
    );
  }
}
//     centerTitle: true,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(
    //     bottom: Radius.circular(100),
    //   ),
    //  ),
    //     bottom: PreferredSize( preferredSize: Size.fromHeight(100), child: SizedBox() ),
    //     leading: Icon(Icons.arrow_back_ios_outlined),
    //     flexibleSpace: Container(
          
    //       decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomLeft,
    //                   end: Alignment.topRight, colors: [Colors.blue, Colors.purple])),
    //     ),