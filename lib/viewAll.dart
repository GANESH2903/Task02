import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/bottomNavigation.dart';
import 'package:task1/loadingShimmer.dart';

class viewAll extends StatefulWidget {
  String apiUrl;

  viewAll(String this.apiUrl);

  @override
  State<viewAll> createState() => apiPage(apiUrl);
}

class apiPage extends State<viewAll> {
  apiPage(String this.apiUrl);
  late bool isLoading = true;
  String apiUrl;
  String stringResponse = '';
  Map<String, dynamic> mapResponse = {};
  List<dynamic> listResponse = [];

  Future apiCall() async {
    await Future.delayed(Duration(seconds: 2));
    http.Response response;
    response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['items'];
        isLoading = false;
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
                children: [
                  Text("Events and experiences" , style: TextStyle(fontSize: 25),),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 10),
                    height: MediaQuery.of(context).size.height*0.785,
                    child : isLoading ? Center(
                      child: ListView.builder(
                          itemBuilder: (context , index){
                            return Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  loading(width: MediaQuery.of(context).size.width*0.75, height:150),
                                  SizedBox(height: 10,),
                                  loading(width: 70, height:10),
                                  SizedBox(height: 10,),
                                  loading(width: MediaQuery.of(context).size.width*0.75, height:10),
                                  SizedBox(height: 10,),
                                  loading(width: 70, height:10),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            );
                          }, itemCount: 4,)
                    ) : Scrollbar(
                      trackVisibility: true,
                      interactive: true,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(bottom: 20, left: MediaQuery.of(context).size.width*0.08),
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
                                                image: AssetImage('assets/loading.png'),)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10 ,right: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: [
                                              Text(listResponse[index]['category'].toString() , style: TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),),
                                              Text(listResponse[index]['name'].toString() , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), softWrap: false, overflow: TextOverflow.fade,),
                                              Text(""),
                                              Row(
                                                children: [
                                                  Text(listResponse[index]['lesson'].toString() != "null" ? listResponse[index]['lesson'].toString() + " lessons" : listResponse[index]['duration'].toString() + " min" ),
                                                  Spacer(),
                                                  Icon(listResponse[index]['locked'] != null ? (listResponse[index]['locked'].toString() == "false" ? Icons.lock_open : Icons.lock_outline) : null),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: listResponse == null ? 0 : listResponse.length,
                      ),
                    ),

                  ),
                ]
            ),
      bottomNavigationBar: const bottomNavigation(),
    );
  }
}
