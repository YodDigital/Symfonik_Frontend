import 'package:flutter/material.dart';
import '/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symphonik',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: welcome()
    );
 }
}