import 'package:flutter/material.dart';
import 'package:resturant/dominos.dart';
import 'package:resturant/home_page.dart';
import 'package:resturant/mc_donalds.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Dominos(),
    );
  }
}

