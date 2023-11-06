import 'package:flutter/material.dart';

class tutorialPage extends StatelessWidget {
  const tutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Tutorial Page"),
      ),
      body: Center(
        child: Text("This is the tutorial page")),
    );
  }
}