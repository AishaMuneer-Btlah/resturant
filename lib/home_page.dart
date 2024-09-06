import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var restNames =['MC Donalds','Starbucks','Dominos','Burger King','Burger King'];
    var restpic   =['assets/images/mac.jpg','assets/images/starbucks.png','assets/images/dominos.png','assets/images/Burger-King.png','assets/images/Burger-King.png'];

    return  Scaffold(
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30,top: 5),
            height: 170,width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pizza.jpg"),
                fit: BoxFit.cover,
              ),
            ),
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),),
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
                Icon(Icons.info_outline,color: Colors.white,),
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
                            image: AssetImage(restpic[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Text('  30%  ',style: TextStyle(color: Colors.white,fontSize: 10,backgroundColor: Colors.green[500]),),
                       ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                        Text(restNames[index],style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text('For intersting time\n Order now !',style: TextStyle(fontSize: 9,color: Colors.black87),),
                         SizedBox(height: 7,),
                         Row(children: [
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          Icon(Icons.star,color: Colors.yellowAccent,size: 15,),
                          SizedBox(width: 7,),
                          Icon(Icons.watch_later_outlined,size: 13,),
                          Text('24',style: TextStyle(fontSize: 10),),
                        ],),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      SizedBox(width: 50,),
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
