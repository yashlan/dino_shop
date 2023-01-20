import 'package:flutter/material.dart';
import 'package:dino_shop/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green Planet',
      theme: ThemeData(
        fontFamily: 'RobotoMedium',
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}