import 'package:flutter/material.dart';
import 'views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookByte',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(title: 'BookByte',),
    );
  }
}