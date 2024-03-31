import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class eventsAndProgram extends StatefulWidget{
  const eventsAndProgram({super.key});

  @override
  State<eventsAndProgram> createState() => events();
}
class events extends State<eventsAndProgram>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text("Programs for you" , style: TextStyle(fontSize: 25),),
              SizedBox(width: 70,),
              Text("view all "),
              Icon(Icons.arrow_forward)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_woman_holding_a.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lifestyle" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("A complete guide for your new born baby" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("16 lessons"),
                            ],
                          ),
                        ),
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
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_mother_hugging_her.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Working Parent" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("Understand the behaviour of child" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("12 lessons"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              Text("Events and expirences" , style: TextStyle(fontSize: 25),),
              SizedBox(width: 18,),
              Text("view all "),
              Icon(Icons.arrow_forward)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_young_woman_doing.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Babycare" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("Understanding of human behaviour" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("18 mar, monday"),
                            ],
                          ),
                        ),
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
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_woman_in_yoga_pose.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Babycare" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("Understanding of human behaviour" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("18 mar, monday"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              Text("Lessons for you" , style: TextStyle(fontSize: 25),),
              SizedBox(width: 90,),
              Text("view all "),
              Icon(Icons.arrow_forward)
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_girl_practicing.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Babycare" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("Understanding of human behaviour" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("3 min"),
                            ],
                          ),
                        ),
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
                    width: MediaQuery.of(context).size.width*0.75,
                    height: MediaQuery.of(context).size.width*0.68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              image: DecorationImage(
                                image: AssetImage('assets/img_young_woman_in_pink.png'),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10 ,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Babycare" , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                              Text("Understanding of human behaviour" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                              Text("1 min"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
