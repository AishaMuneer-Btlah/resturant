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
        height: 150,width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mac-meal.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Column(children: [
              ListTile(
                leading: Image.asset('assets/images/mac.jpg'),
                title: Text('Mc Donalds',style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('American cuisine,\n fast food',style: TextStyle(fontSize: 12),),
                trailing: Icon(Icons.favorite,color: Colors.orange,),
              ),
              Row(children: [

              ],),
              Row(children: [

              ],),
              Row(children: [

              ],)

            ],),
          )
          ],),),
    );
  }
}
