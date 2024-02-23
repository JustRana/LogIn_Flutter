import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //color background
      backgroundColor: Colors.white,
      //use safe area To move the image away from the edges of the application
      body: SafeArea(
        //use Center to place the column in the middle of the screen
        child : Center(
          //Items are scrollable
         child : SingleChildScrollView(
           child: Column(
            //make everything in the center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 //Image 
           Image.asset('images/logo.png'
           ,height: 300,
           ),
         
         
                 //Put a space between the image and the text
                 SizedBox(height: 1),
         
         
                 //Title
           Text(
            'LOG IN',
            //change style for the text
            style: GoogleFonts.robotoCondensed(fontSize: 40 ,fontWeight: FontWeight.bold),
            ),
         
         
                 //SubTitle
           Text(
            'Welcome',
            //change style for the text
            style: GoogleFonts.robotoCondensed(fontSize: 20),
            ),
         
         
           //Put a space between the Subtitle and the Email field
                 SizedBox(height: 40),
         
         
         
                 //Email Field 
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 //I used Container to modify Field and set a background and colors for it
                 child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 215, 213, 213),
              borderRadius: BorderRadius.circular(12),
            ),
         
            //I used padding to add space between the text and the box
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                 decoration: InputDecoration(
                  border: InputBorder.none,
                  //To clarify, this box pertains to email
                  hintText: 'Email',
                 ),
              ),
            ),
                 ),
               ),
         
         
               //Put a space between the Email Field and the Password field
                 SizedBox(height: 10),
         
                 
               //Pasword Field 
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 //I used Container to modify Field and set a background and colors for it
                 child: Container(
            decoration: BoxDecoration(
              color:Color.fromARGB(255, 215, 213, 213),
              borderRadius: BorderRadius.circular(12),
            ),
         
            //I used padding to add space between the text and the box
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                //to make the password hidden
                obscureText: true,
                 decoration: InputDecoration(
                  border: InputBorder.none,
                  //To clarify, this box pertains to password
                  hintText: 'Password',
                 ),
              ),
            ),
                 ),
               ),
         
         
               //Put a space between the Password field and Sing in button
                 SizedBox(height: 15),
         
         
                //sing in button
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 97, 116, 239),
              borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                'LogIn',
            style: GoogleFonts.robotoCondensed(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18 ,
            ),
           ),
                 ),
                 ),
               ),
         
         
               //Put a space between the Sing in button and sing up
                 SizedBox(height: 25),
         
         
                // Text : sing up  
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text('Not yet a member?',
             style: GoogleFonts.robotoCondensed(
              color: Color.fromARGB(255, 20, 20, 20),
              fontWeight: FontWeight.bold,
             ),),
             GestureDetector(
               child: Text('Sing up Now',
               style: GoogleFonts.robotoCondensed(
                color: Color.fromARGB(255, 52, 167, 56),
                fontWeight: FontWeight.bold,
               )),
             )
           ],
                )
               ]),
         ),
      ),
      ),
    );
  }
}