import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:provider/provider.dart';
// import '';
// import 'homePage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyAppState(),
    child: MaterialApp(
      title: 'Namer App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const Splash(),
    ),
  ));
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void updateWordPair() {
    current = WordPair.random();
    notifyListeners();
  }
}
