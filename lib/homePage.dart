import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/api1.dart';
import 'package:task1/api2.dart';
import 'package:task1/bottomNavigation.dart';
import 'package:task1/eventsAndPrograms.dart';

class homePage extends StatefulWidget{
  const homePage({super.key});

  @override
  State<homePage> createState() => _myHomePage();
}

class _myHomePage extends State<homePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(onPressed:(){}, icon: Icon(Icons.menu),),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.6,
          ),
          IconButton(onPressed:(){}, icon: Icon(Icons.chat),),
          IconButton(onPressed:(){}, icon: Icon(Icons.notifications),),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Priya!" , style: TextStyle(fontSize: 35 , color: Colors.black),),
              Text("What do you wanna learn today?" , style: TextStyle(fontSize:15 , color: Colors.black54),),
              SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.43,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent ),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.book_outlined),
                                Text("Programs" , style: TextStyle(fontSize: 22),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width*0.43,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent ),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [Icon(Icons.help),
                                Text("Get Help" , style: TextStyle(fontSize: 22),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.43,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.book_outlined),
                                Text("Learn" , style: TextStyle(fontSize: 22),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 10,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.43,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent ),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.bar_chart),
                                Text("DD Tracker" , style: TextStyle(fontSize: 22),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    eventsAndProgram(),

                    api1(),
                    api2(),
                  ],
                ),
              )
            ],
          ),

        ),
      ),
      bottomNavigationBar: const bottomNavigation(),
    );
  }
}
