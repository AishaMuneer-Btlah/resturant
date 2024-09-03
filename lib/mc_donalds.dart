import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class McDonalds extends StatelessWidget {
  const McDonalds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
        height: 50,width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mac-meal.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        )],),),
    );
  }
}
