import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import '/welcome/welcome.dart';
import 'splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyAppState(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Symfonik',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        fontFamily: 'Poppins'
      ),
      home: const Splash(),
    ),
  ));
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Symphonik',
      theme: ThemeData(fontFamily: 'Poppins'),
      // home: welcome()
    );
 }
  void updateWordPair() {
    current = WordPair.random();
    notifyListeners();
  }
}