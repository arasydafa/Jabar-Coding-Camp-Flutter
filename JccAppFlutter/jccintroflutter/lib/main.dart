import 'package:flutter/material.dart';
import 'Tugas/Tugas14/get_data.dart';

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
      home: GetDataScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
