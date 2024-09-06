import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/home_page.dart';

class Dominos extends StatelessWidget {
  const Dominos({super.key});

  @override
  Widget build(BuildContext context) {
    var mealName = ['assets/images/burger1.jpg','assets/images/burger2.jpg','assets/images/burger3.jpg','assets/images/burger1.jpg','assets/images/burger2.jpg',];

    return Scaffold(
      body: SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/domindos-rest.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context,HomePage());
                },
                child: Container(
                  margin: EdgeInsets.only(right: 320,bottom: 100),
                  child:Icon(Icons.arrow_back_ios_new,color: Colors.white,),),),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),),

              child: Column(children: [
                ListTile(
                  leading: Image.asset('assets/images/dominos.png'),
                  title: Text('Dominos',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('American cuisine,\n fast food',style: TextStyle(fontSize: 12),),
                  trailing: Icon(Icons.favorite,color: Colors.orange,),
                ),
                SizedBox(height: 5,),
                Container(
                  padding: EdgeInsets.only(left: 17,),
                  child:Column(children: [
                    Row(children: [
                      Text('daily time:',style: TextStyle(fontSize: 13)),
                      Text(' 9:30 am to 11:00 pm',style: TextStyle(color: Colors.orange,fontSize: 13),),
                    ],),
                    SizedBox(height: 5,),
                    Row(children: [
                      Icon(Icons.star,color: Colors.orange,size: 18,),
                      Text('  4.9  ',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('200+ Ratings',style: TextStyle(fontSize: 12),),
                    ],),
                    Row(children: [
                      Icon(Icons.location_on,color: Colors.orange,size: 18),
                      Text('  Location',style: TextStyle(fontSize: 12),),
                    ],),
                    SizedBox(height: 10,),
                    Center(child:  Container(
                      padding: EdgeInsets.only(left: 7,top: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange[600],
                      ),
                      height: 50,width: 300,
                      child:Column(children: [
                        Text('30% OFF',style: TextStyle(color: Colors.white),),
                      Text('Enjoy 30% off on all catigoreis',style: TextStyle(color: Colors.white),),
                      ],),),),

                    SizedBox(height: 10,),
                    Container(
                        padding: EdgeInsets.only(top: 7,left: 10),
                        height: 30,width: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.orange[100],
                        ),
                        child: Center(child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Text('Offer',style: TextStyle(color: Colors.orange,fontSize: 12),),
                            SizedBox(width: 30,),
                            Text('Burgers',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 30,),
                            Text('Pizza',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 30,),
                            Text('Meals',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 30,),
                            Text('Chicken',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 30,),
                            Text('Chicken',style: TextStyle(fontSize: 12),),


                          ],),)) ,
                    SizedBox(width: 15,),
                  ],) ,),
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
                                  image: AssetImage(mealName[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),

                            ),
                            SizedBox(width: 20,),
                            Column(
                              children: [
                                Text('Item Name',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                SizedBox(height: 2,),
                                Text('Lorem ipsum dolor sit amet,\n consetetur sadipscing elitr,',style: TextStyle(fontSize: 9,color: Colors.black87),),
                                SizedBox(height: 7,),
                                Row(children: [
                                  Text('\$5.55',style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(width: 7,),
                                  Text('\$5.55',style: TextStyle(fontSize: 10,decoration: TextDecoration.lineThrough),),
                                ],),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            SizedBox(width: 50,),
                            Column(children: [
                              Icon(Icons.favorite_outline_rounded,color: Colors.grey,),
                              Icon(Icons.add,)
                            ],),
                          ],) ,)
                        ],);
                    },),),
              ],),
            )
          ],),),
    );
  }
}
