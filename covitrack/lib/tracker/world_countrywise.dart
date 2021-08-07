//this is countrywise tracker file
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {

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
                    itemBuilder: (BuildContext context, index) => Container(
                        height: 50.0,
                        width: 50.0,
                        child: GestureDetector(
                            onTap: () => showcard(
                                snapshot.data[index]['country'].toString(),
                                snapshot.data[index]['cases'].toString(),
                                snapshot.data[index]['todayDeaths'].toString(),
                                snapshot.data[index]['recovered'].toString(),
                                snapshot.data[index]['deaths'].toString()),
                            child: Card(
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
                                          //       AssetImage("images/wdeath.png"),
                                          //   height: 85,
                                          //   width: 85,
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

  Future showcard(String country, ind, inter, recover, death) async {
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
                    "$country",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Total Cases: $ind",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  // Text(
                  //   "Today's Deaths: $inter",
                  //   style: TextStyle(
                  //       fontSize: 20,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(height: 5),
                  Text(
                    "Total Recoveries: $recover",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Total Deaths: $death",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        });
  }

  final String url = "https://corona.lmao.ninja/v2/countries";
  Future<List> datas;

  Future<List> getData() async {
    var response = await Dio().get(url);
    return response.data;
  }

  @override
  void initState() {
    super.initState();
    datas = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     title: Text('Countrywise Statistics'),
        //     backgroundColor: Color(0xFF152238)),
        
        body: RefreshIndicator(
          child: Container(
            color: Color(0xff08D9D6),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors: [Colors.purple, Colors.blue],
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //   ),
              // ),
              // padding: EdgeInsets.all(12),
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
                              // icon: Icon(
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
                          'Countrywise',
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder(
                            future: datas,
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                print(snapshot.data);
                                return GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            childAspectRatio: 1.0,
                                            crossAxisSpacing: 10.0,
                                            mainAxisSpacing: 10.0),
                                    itemCount: 222,
                                    itemBuilder: (BuildContext context, index) =>
                                        Container(
                                            //                         decoration: BoxDecoration(
                                            //   gradient: LinearGradient(
                                            //     colors: [Colors.purple, Colors.blue],
                                            //     begin: Alignment.topLeft,
                                            //     end: Alignment.bottomRight,
                                            //   ),
                                            // ),
                                            height: 20.0,
                                            width: 50.0,
                                            child: GestureDetector(
                                                onTap: () => showcard(
                                                    snapshot.data[index]['country']
                                                        .toString(),
                                                    snapshot.data[index]['cases']
                                                        .toString(),
                                                    snapshot.data[index]
                                                            ['todayDeaths']
                                                        .toString(),
                                                    snapshot.data[index]
                                                            ['recovered']
                                                        .toString(),
                                                    snapshot.data[index]['deaths']
                                                        .toString()),
                                                child: Card(
                                                  elevation: 2,
                                                  clipBehavior: Clip.antiAlias,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                  ),
                                                  child: Container(
                                                      color: Color(0xffEAEAEA), //
                                                      child: Center(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[

                                                              Image.network(snapshot.data[index]['countryInfo']['flag'],width: 50,),
                                                              // Text(
                                                              //   'Total Cases:${snapshot.data[index]['cases'].toString()}',
                                                              //   style: TextStyle(
                                                              //       color:
                                                              //           Colors.redAccent,
                                                              //       fontWeight:
                                                              //           FontWeight.bold),
                                                              // ),

                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(19),
                                                                child: Text(
                                                                  snapshot.data[
                                                                          index]
                                                                      ['country'],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ]),
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
