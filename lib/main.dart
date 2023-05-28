import 'package:flutter/material.dart';
import 'package:statistic_test/home_page.dart';

void main() {
  runApp(const MyApp());
}//main

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }//build
}//MyApp