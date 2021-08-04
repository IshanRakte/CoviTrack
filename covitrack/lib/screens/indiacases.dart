import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dio/dio.dart';

class India extends StatefulWidget {
  @override
  _IndiaState createState() => _IndiaState();
}

class _IndiaState extends State<India> {
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
                                snapshot.data[index]['confirmedCasesIndian']
                                    .toString(),
                                snapshot.data[index]['confirmedCasesForeign']
                                    .toString(),
                                snapshot.data[index]['discharged'].toString(),
                                snapshot.data[index]['deaths'].toString()),
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
                                          Image(
                                            image:
                                                AssetImage("images/cases.png"),
                                            height: 100,
                                            width: 100,
                                          ),
                                          Padding(padding: EdgeInsets.all(10)),
                                          Text(
                                            snapshot.data[index]['loc'],
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
            shape: RoundedRectangleBorder(),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    "Indian Cases :$ind",
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  ),
                  Text(
                    "Foreigner Cases :$inter",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    "Total Recoveries :$recover",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                  Text(
                    "Total Deaths :$death",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        });
  }

  final String url = "https://api.rootnet.in/covid19-in/stats/latest";
  Future<List> datas;

  Future<List> getData() async {
    var response = await Dio().get(url);
    return response.data['data']['regional'];
  }

  @override
  void initState() {
    super.initState();
    datas = getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Statewise Statistics'),
            backgroundColor: Color(0xFF152238)),
        backgroundColor: Colors.black,
        body: RefreshIndicator(
          child: Container(
              padding: EdgeInsets.all(10),
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
                          itemCount: 27,
                          itemBuilder: (BuildContext context, index) =>
                              SizedBox(
                                  height: 50.0,
                                  width: 50.0,
                                  child: GestureDetector(
                                      onTap: () => showcard(
                                          snapshot.data[index]
                                                  ['confirmedCasesIndian']
                                              .toString(),
                                          snapshot.data[index]
                                                  ['confirmedCasesForeign']
                                              .toString(),
                                          snapshot.data[index]['discharged']
                                              .toString(),
                                          snapshot.data[index]['deaths']
                                              .toString()),
                                      child: Card(
                                        //elevation: 10,
                                        // child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),

                                        child: Container(
                                            color: Color(0xFF292929),
                                            child: Center(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.0)),
                                                    Text(
                                                      'Indian Cases:${snapshot.data[index]['confirmedCasesIndian'].toString()}',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF45b6fe),
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
                                                          ['loc'],
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
                  })),
          onRefresh: () => onRefresh(),
        ));
  }
}
