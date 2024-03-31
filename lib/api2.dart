import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/viewAll.dart';

class api2 extends StatefulWidget {
  const api2({super.key});

  @override
  State<api2> createState() => apiPage();
}

class apiPage extends State<api2> {
  String apiUrl = 'https://632017e19f82827dcf24a655.mockapi.io/api/lessons';
  String stringResponse = '';
  Map<String, dynamic> mapResponse = {};
  List<dynamic> listResponse = [];

  Future apiCall() async {
    http.Response response;
    response = await http.get(
        Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['items'];
      });
    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Text("Events and expirences" , style: TextStyle(fontSize: 25),),
              SizedBox(width: 18,),
              Text("view all "),
              Icon(Icons.arrow_forward),
            ],
          ),
          Container(
            height: 300,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 20,),
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
                                  image: AssetImage('assets/books.png'),)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10 ,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(listResponse[0]['category'].toString() , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                                Text(listResponse[0]['name'].toString() , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),softWrap: false, overflow: TextOverflow.fade,),
                                Text(""),
                                Row(
                                  children: [
                                    Text(listResponse[0]['lesson'].toString() != "null" ? listResponse[0]['lesson'].toString() + " lessons" : listResponse[0]['duration'].toString() + " min" ),
                                    Spacer(),
                                    Icon(listResponse[0]['locked'] != null ? (listResponse[0]['locked'].toString() == "false" ? Icons.lock_open : Icons.lock_outline) : null),
                                  ],
                                ),
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
                                  image: AssetImage('assets/jewelery.png'),)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10 ,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(listResponse[1]['category'].toString() , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                                Text(listResponse[1]['name'].toString() , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),softWrap: false, overflow: TextOverflow.fade,),
                                Text(""),
                                Row(
                                  children: [
                                    Text(listResponse[1]['lesson'].toString() != "null" ? listResponse[1]['lesson'].toString() + " lessons" : listResponse[1]['duration'].toString() + " min" ),
                                    Spacer(),
                                    Icon(listResponse[0]['locked'] != null ? (listResponse[0]['locked'].toString() == "false" ? Icons.lock_open : Icons.lock_outline) : null),
                                  ],
                                ),
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
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                          width: 2,
                          color: Colors.blueAccent
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => viewAll(apiUrl)));
                    },
                    child: Text('View all'),
                  )
                ],
              ),
            ),
          ),
        ]
    );
  }
}
