import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';

class IndiaCases3 extends StatefulWidget {


  @override
  _IndiaCases3State createState() => _IndiaCases3State();
}

class _IndiaCases3State extends State<IndiaCases3> {
   Future onRefresh() async {
    await Container(
        padding: EdgeInsets.all(10),
        child: FutureBuilder(
            future: datas,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.0,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0),
                    itemCount: 27,
                    itemBuilder: (BuildContext context, index) => SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: GestureDetector(
                            onTap: () => showcard(
                                snapshot.data[index]['newInfected']
                                    .toString(),
                                snapshot.data[index]['newRecovered']
                                    .toString(),
                                snapshot.data[index]['recovered'].toString(),
                                snapshot.data[index]['totalInfected'].toString()),
                            child: Card(
                              //elevation: 10,
                              // child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),

                              child: Container(
                                  color: Color(0xFF292929),
                                  child: Center(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          // Image(
                                          //   image:
                                          //       AssetImage("images/cases.png"),
                                          //   height: 100,
                                          //   width: 100,
                                          // ),
                                          Padding(padding: EdgeInsets.all(10)),
                                          Text(
                                            snapshot.data[index]['region'],
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        ]),
                                  )),
                            ))));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }

   

  Future showcard(String ind, inter, recover, death) async {
    await showDialog(
        context: context,
        builder: (BuildContext contect) {
          return AlertDialog(
            backgroundColor: Color(0xFF363636),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    "New Cases: $ind",
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  Text(
                    "Recovered: $inter",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    "Total Recoveries: $recover",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                  Text(
                    "Total cases: $death",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        });
  }

  final String url = "https://api.apify.com/v2/key-value-stores/toDWvRj1JpTXiM8FF/records/LATEST?disableRedirect=true";
  Future<List> datas;
    Future<Map<String,dynamic>>
 indiadata;

  Future<List> getData() async {
    var response = await Dio().get(url);
    return response.data['regionData'];
  }

  Future<Map<String,dynamic>>
 getData2() async {
    var response = await Dio().get(url);
    return response.data;
  }
  

  @override
  void initState() {
    super.initState();
    datas = getData();
    indiadata = getData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: Colors.transparent,
        body: RefreshIndicator(
          child: Container(
              
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Statewise',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 5,
                        color: Colors.white,
                        indent: 20,
                        endIndent: 20,
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              // height: 100,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text(
                                        'Total Active Cases: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                          // color: Colors.grey[600],
                                        ),
                                      ),
                                      FutureBuilder(
                                        future: indiadata,
                                        builder: (BuildContext context, Snapshot){
                                          if(Snapshot.hasData){
                                            return Text('${Snapshot.data['activeCases']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
                                          }
                                          
                                          else{
                                            return SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                valueColor:
                                                  AlwaysStoppedAnimation<Color>(Colors.black),
                                              ),
                                            );
                                          }
                                        }
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(
                                        'New Active Cases: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                          // color: Colors.grey[600],
                                        ),
                                      ),
                                      FutureBuilder(
                                        future: indiadata,
                                        builder: (BuildContext context, Snapshot){
                                          if(Snapshot.hasData){
                                            return Text('${Snapshot.data['activeCasesNew']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
                                          }
                                          
                                          else{
                                            return SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                valueColor:
                                                  AlwaysStoppedAnimation<Color>(Colors.black),
                                              ),
                                            );
                                          }
                                        }
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(
                                        'Total Recoveries: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                          // color: Colors.grey[600],
                                        ),
                                      ),
                                      FutureBuilder(
                                        future: indiadata,
                                        builder: (BuildContext context, Snapshot){
                                          if(Snapshot.hasData){
                                            return Text('${Snapshot.data['recovered']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
                                          }
                                          
                                          else{
                                            return SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                valueColor:
                                                  AlwaysStoppedAnimation<Color>(Colors.black),
                                              ),
                                            );
                                          }
                                        }
                                      ),
                                    ],
                                  ),
                                  // SizedBox(height: 5,),
                                  // Row(
                                  //   children: [
                                  //     Text(
                                  //       'Deaths Today: ',
                                  //       style: TextStyle(
                                  //         fontSize: 18,
                                  //         // fontWeight: FontWeight.bold,
                                  //         // color: Colors.grey[600],
                                  //       ),
                                  //     ),
                                  //     FutureBuilder(
                                  //       future: indiadata,
                                  //       builder: (BuildContext context, Snapshot){
                                  //         if(Snapshot.hasData){
                                  //           return Text('${Snapshot.data['deathsNew']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
                                  //         }
                                          
                                  //         else{
                                  //           return SizedBox(
                                  //             height: 10,
                                  //             width: 10,
                                  //             child: CircularProgressIndicator(
                                  //               strokeWidth: 2,
                                  //               valueColor:
                                  //                 AlwaysStoppedAnimation<Color>(Colors.black),
                                  //             ),
                                  //           );
                                  //         }
                                  //       }
                                  //     ),
                                  //   ],
                                  // ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(
                                        'Total Deaths: ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          // fontWeight: FontWeight.bold,
                                          // color: Colors.grey[600],
                                        ),
                                      ),
                                      FutureBuilder(
                                        future: indiadata,
                                        builder: (BuildContext context, Snapshot){
                                          if(Snapshot.hasData){
                                            return Text('${Snapshot.data['deaths']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),);
                                          }
                                          
                                          else{
                                            return SizedBox(
                                              height: 10,
                                              width: 10,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                valueColor:
                                                  AlwaysStoppedAnimation<Color>(Colors.black),
                                              ),
                                            );
                                          }
                                        }
                                      ),
                                    ],
                                  ),

                                  //
                                  SizedBox(height: 10,),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder(
                            future: datas,
                            builder: (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                print(snapshot.data);
                                return GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 1.0,
                                            crossAxisSpacing: 10.0,
                                            mainAxisSpacing: 10.0),
                                    itemCount: 36,
                                    itemBuilder: (BuildContext context, index) =>
                                        SizedBox(
                                            height: 50.0,
                                            width: 50.0,
                                            child: GestureDetector(
                                                onTap: () => showcard(
                                                    (snapshot.data[index]
                                                            ['newInfected'] + snapshot.data[index]['newRecovered'])  // logic for positive active cases
                                                        .toString(),
                                                    snapshot.data[index]
                                                            ['newRecovered']
                                                        .toString(),
                                                    snapshot.data[index]['recovered']
                                                        .toString(),
                                                    snapshot.data[index]['totalInfected']
                                                        .toString()),
                                                child: Card(
                                                  elevation: 2,
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                  ),
                                                  //elevation: 10,
                                                  // child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                    
                                                  child: Container(
                                                      color: Colors.white,
                                                      child: Center(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                Text(
                                                                  'Recovered:${snapshot.data[index]['newRecovered'].toString()}',
                                                                  style: TextStyle(
                                                                      color:
                                                                          Colors.blue,
                                                                      fontWeight:
                                                                          FontWeight.bold),
                                                                ),
                                                                Padding(
                                                                    padding:
                                                                        EdgeInsets.only(
                                                                            top: 5.0)),
                                                                // Image(
                                                                //   image: AssetImage(
                                                                //       "images/cases.png"),
                                                                //   height: 100,
                                                                //   width: 100,
                                                                // ),
                                                                Padding(
                                                                    padding:
                                                                        EdgeInsets.only(
                                                                            top: 5.0)),
                                                                Text(
                                                                  snapshot.data[index]
                                                                      ['region'],
                                                                  style: TextStyle(
                                                                      fontSize: 18,
                                                                      color: Colors.black, fontWeight: FontWeight.bold),
                                                                ),
                                                              ]),
                                                        ),
                                                      )),
                                                ))));
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              )),
          onRefresh: () => onRefresh(),
        ));
  }
}
