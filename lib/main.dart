import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicApp());
}

class MagicApp extends StatefulWidget {
  const MagicApp({Key? key}) : super(key: key);

  @override
  State<MagicApp> createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int ballClick = 1;
  void balls() {
    setState(() {
      ballClick = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Magic Ball'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    balls();
                  },
                  child: Image.asset('images/ball$ballClick.png'))
            ],
          ),
        ),
      ),
    ));
  }
}
