import 'package:flutter/material.dart';
import 'package:sub1/ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luha Store',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}