import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final myAppState = Provider.of<MyAppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(myAppState.current.asPascalCase),
      ),
      body: const Center(
        child: Text(
          'My Home Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
