import 'package:flutter/material.dart';
// import 'package:jccintroflutter/Tugas/Tugas15/LoginScreen.dart'; // Tugas 15
import 'package:jccintroflutter/Tugas/Quiz3/screen/login/login_screen.dart'; // Quiz 3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Styling',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
