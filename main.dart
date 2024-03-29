import 'package:flutter/material.dart';
import 'Pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //delete Banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 125, 124, 124),
      ),
    home: LoginPage(),
    );
  }
}
