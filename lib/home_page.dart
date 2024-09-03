import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30,top: 5),
            height: 170,width: 400,
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 20,),
             SizedBox(height: 30,),
            Text('Mega Deal',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
            SizedBox(height: 10,),
            Text('Get mega',style: TextStyle(color: Colors.white,fontSize: 12),)
          ],),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
           // decoration: BoxDecoration(
           //   borderRadius: BorderRadius.circular(30),),
            child: Column(children: [
            Center(child:  Container(
              padding: EdgeInsets.only(left: 7,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.orange[800],
              ),
              height: 50,width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.circle,color: Colors.white,),
                Text('Compaing Info',style: TextStyle(color: Colors.white),),
                SizedBox(width: 65,),
                Text('Back by click',style: TextStyle(color: Colors.white,fontSize: 10),),
                Icon(Icons.arrow_forward,color: Colors.white,),
              ],),),),

             /*SizedBox(height: 50,child:
                 ListView.builder(
                   itemCount: 5,
                   scrollDirection: Axis.horizontal,
                     itemBuilder: (ctx,index){
                       return ListTile(
                         title: Text('Mc donalds') ,

                       );
                     }))*/
          SizedBox(height: 20,),
          SizedBox(height: 370,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx,index){
                return Column(
                  children: [Container(
                    margin: EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    width: 300,height: 70,
                    child:Row( children: [
                      Container(
                        height: 60,width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("assets/images/mac.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                       ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                        Text('MC donalds',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        Text('data',style: TextStyle(fontSize: 12,color: Colors.black87),),
                         SizedBox(height: 20,),
                         Row(children: [
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),


                        ],),
                      ],),
                      SizedBox(width: 90,),
                      Icon(Icons.favorite,color: Colors.orange,)

                    ],) ,)
                ],);
              },),)
          ],),)
        ],
      ),)
    );
  }
}
