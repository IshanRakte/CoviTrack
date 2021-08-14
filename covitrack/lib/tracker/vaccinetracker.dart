import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VaccineTracker extends StatefulWidget {


  @override
  _VaccineTrackerState createState() => _VaccineTrackerState();
}

class _VaccineTrackerState extends State<VaccineTracker> {
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
                              snapshot.data[index]['country']
                                    .toString(),
                                     (snapshot.data[index]['country'])  
                                                        .toString(),),
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
                                            snapshot.data[index]['country'],
                                        
                                                      
                                            
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

   

  Future showcard(String ind, ind2) async {
    await showDialog(
        context: context,
        builder: (BuildContext contect) {
          return AlertDialog(
            backgroundColor: Color(0xff252A34),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                   Text(
                    "$ind",
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 55,),
                  Text(
                    "Total Vaccinated",
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "(At least one dose)",
                    style: TextStyle(fontSize: 18, color: Colors.white, ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "$ind2".substring(1, ind2.length - 1),
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),


                ],
              ),
            ),
          );
        });
  }

  final String url = "https://disease.sh/v3/covid-19/vaccine/coverage/countries?lastdays=1";
  Future<List> datas;
    Future<Map<String,dynamic>>
 indiadata;

  Future<List> getData() async {
    var response = await Dio().get(url);
    return response.data;
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
        
        // backgroundColor: Colors.transparent,
        body: RefreshIndicator(
          child: Container(
            color: Color(0xff08D9D6),
        //        decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.purple, Colors.blue],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
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
                                icon: FaIcon(FontAwesomeIcons.angleLeft,color: Color(0xff252A34),)
                                //   Icons.arrow_back_ios_new,
                                //   color: Colors.white,
                                // ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Vaccine Tracker',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Color(0xff252A34),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 15,
                        thickness: 5,
                        color: Color(0xff252A34),
                        indent: 20,
                        endIndent: 20,
                      ),
                      
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Card(
                      //     color: Color(0xff252A34),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Container(
                      //         color: Color(0xff252A34),
                      //         // height: 100,
                      //         width: double.infinity,
                      //         child: Column(
                      //           children: [
                      //             SizedBox(height: 10,),
                      //             Row(
                      //               children: [
                                      


                      //                 Text(
                      //                   'Total Active Cases: ',
                      //                   style: TextStyle(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.white,
                      //                   ),
                      //                 ),
                      //                 FutureBuilder(
                      //                   future: indiadata,
                      //                   builder: (BuildContext context, Snapshot){
                      //                     if(Snapshot.hasData){
                      //                       return Text('${Snapshot.data['activeCases']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.white,),);
                      //                     }
                                          
                      //                     else{
                      //                       return SizedBox(
                      //                         height: 10,
                      //                         width: 10,
                      //                         child: CircularProgressIndicator(
                      //                           strokeWidth: 2,
                      //                           valueColor:
                      //                             AlwaysStoppedAnimation<Color>(Colors.white),
                      //                         ),
                      //                       );
                      //                     }
                      //                   }
                      //                 ),
                      //               ],
                      //             ),  
                      //             SizedBox(height: 5,),
                      //             Row(
                      //               children: [
                      //                 Text(
                      //                   'Total Cases: ',
                      //                   style: TextStyle(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.redAccent,
                      //                   ),
                      //                 ),
                      //                 FutureBuilder(
                      //                   future: indiadata,
                      //                   builder: (BuildContext context, Snapshot){
                      //                     if(Snapshot.hasData){
                      //                       return Text('${Snapshot.data['totalCases']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.redAccent), );
                      //                     }
                                          
                      //                     else{
                      //                       return SizedBox(
                      //                         height: 10,
                      //                         width: 10,
                      //                         child: CircularProgressIndicator(
                      //                           strokeWidth: 2,
                      //                           valueColor:
                      //                             AlwaysStoppedAnimation<Color>(Colors.white),
                      //                         ),
                      //                       );
                      //                     }
                      //                   }
                      //                 ),
                      //               ],
                      //             ),
                      //             SizedBox(height: 5,),
                      //             Row(
                      //               children: [
                      //                 Text(
                      //                   'Total Recoveries: ',
                      //                   style: TextStyle(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.greenAccent,
                      //                   ),
                      //                 ),
                      //                 FutureBuilder(
                      //                   future: indiadata,
                      //                   builder: (BuildContext context, Snapshot){
                      //                     if(Snapshot.hasData){
                      //                       return Text('${Snapshot.data['recovered']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.greenAccent,),);
                      //                     }
                                          
                      //                     else{
                      //                       return SizedBox(
                      //                         height: 10,
                      //                         width: 10,
                      //                         child: CircularProgressIndicator(
                      //                           strokeWidth: 2,
                      //                           valueColor:
                      //                             AlwaysStoppedAnimation<Color>(Colors.white),
                      //                         ),
                      //                       );
                      //                     }
                      //                   }
                      //                 ),
                      //               ],
                      //             ),
                      //             SizedBox(height: 5,),
                      //             Row(
                      //               children: [
                      //                 Text(
                      //                   'Total Deaths: ',
                      //                   style: TextStyle(
                      //                     fontSize: 18,
                      //                     fontWeight: FontWeight.bold,
                      //                     color: Colors.red[700],
                      //                   ),
                      //                 ),
                      //                 FutureBuilder(
                      //                   future: indiadata,
                      //                   builder: (BuildContext context, Snapshot){
                      //                     if(Snapshot.hasData){
                      //                       return Text('${Snapshot.data['deaths']}'.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.red[700],),);
                      //                     }
                                          
                      //                     else{
                      //                       return SizedBox(
                      //                         height: 10,
                      //                         width: 10,
                      //                         child: CircularProgressIndicator(
                      //                           strokeWidth: 2,
                      //                           valueColor:
                      //                             AlwaysStoppedAnimation<Color>(Colors.white),
                      //                         ),
                      //                       );
                      //                     }
                      //                   }
                      //                 ),
                      //               ],
                      //             ),

                      //             //
                      //             SizedBox(height: 10,),

                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
                                    itemCount: 216,
                                    itemBuilder: (BuildContext context, index) =>
                                        SizedBox(
                                            height: 50.0,
                                            width: 50.0,
                                            child: GestureDetector(
                                                onTap: () => showcard(
                                                  (snapshot.data[index]['country'])  
                                                        .toString(),
                                                         (snapshot.data[index]['timeline'])  
                                                        .toString(),),
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
                                                      color: Color(0xffEAEAEA),
                                                      child: Center(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment.center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment.center,
                                                              children: <Widget>[
                                                                // Text(
                                                                //   'Recovered:${snapshot.data[index]['newRecovered'].toString()}',
                                                                //   style: TextStyle(
                                                                //       color:
                                                                //           Colors.blue,
                                                                //       fontWeight:
                                                                //           FontWeight.bold),
                                                                // ),
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
                                                                      ['country'],
                                                                  style: TextStyle(
                                                                      fontSize: 20,
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
              )
              ),
          onRefresh: () => onRefresh(),
        ));
  }
}
