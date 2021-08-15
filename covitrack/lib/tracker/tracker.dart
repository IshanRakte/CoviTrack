import 'dart:convert';
import 'package:covitrack/models/tcases.dart';
import 'package:covitrack/tracker/indiacases3.dart';
import 'package:covitrack/tracker/world_countrywise.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class CaseTracker extends StatefulWidget {
  @override
  _CaseTrackerState createState() => _CaseTrackerState();
}

class _CaseTrackerState extends State<CaseTracker> {
  final String url = "https://disease.sh/v3/covid-19/all";

  Future<Tcases> getJsonData() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final convertDataJSON = jsonDecode(response.body);
      return Tcases.fromJson(convertDataJSON);
    } else {
      throw Exception('try to reload');
    }
  }
  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }
  
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    CaseTracker(),
    World(),
    Text('Profile Screen'),
  ];



  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xff08D9D6),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.purple, Colors.blue],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        // child: _widgetOptions.elementAt(_selectedIndex), =>>> Need to add this
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Tracker',
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
                SizedBox(
                  height: 30,
                ), 
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Center(
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 130,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Worldwide cases',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        FutureBuilder<Tcases>(
                                            future: getJsonData(),
                                            builder: (BuildContext context, Snapshot) {
                                              if (Snapshot.hasData) {
                                                final covid = Snapshot.data;
                                                return Text(
                                                  '${covid?.cases}',
                                                  style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                );
                                              } else if (Snapshot.hasError) {
                                                return Text(Snapshot.error.toString());
                                              } else
                                                return CircularProgressIndicator(
                                                  valueColor:
                                              AlwaysStoppedAnimation<Color>(Colors.black),
                                                );
                                            }),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            child: Image.asset(
                                          'assets/world.jpg',
                                          width: 90,
                                        )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Center(
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 130,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Deaths',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        FutureBuilder<Tcases>(
                                            future: getJsonData(),
                                            builder: (BuildContext context, Snapshot) {
                                              if (Snapshot.hasData) {
                                                final covid = Snapshot.data;
                                                return Text(
                                                  '${covid?.deaths}',
                                                  style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red[600],
                                                  ),
                                                );
                                              } else if (Snapshot.hasError) {
                                                return Text(Snapshot.error.toString());
                                              } else
                                                return CircularProgressIndicator(
                                                  valueColor:
                                              AlwaysStoppedAnimation<Color>(Colors.black),
                                                );
                                            }),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            child: Image.asset(
                                          'assets/redplus.jpeg',
                                          width: 60,
                                        )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Center(
                            child: Card(
                              elevation: 2,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 130,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Recovered',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        FutureBuilder<Tcases>(
                                            future: getJsonData(),
                                            builder: (BuildContext context, Snapshot) {
                                              if (Snapshot.hasData) {
                                                final covid = Snapshot.data;
                                                return Text(
                                                  '${covid?.recovered}',
                                                  style: TextStyle(
                                                    fontSize: 28,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green,
                                                  ),
                                                );
                                              } else if (Snapshot.hasError) {
                                                return Text(Snapshot.error.toString());
                                              } else
                                                return CircularProgressIndicator(
                                                  valueColor:
                                              AlwaysStoppedAnimation<Color>(Colors.black),
                                                );
                                            }),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                            child: Image.asset(
                                          'assets/recovered.jpeg',
                                          width: 60,
                                        )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(20))),
                                  context: context,
                                  builder: (context) => buildSheet());
                            },
                            child: Text(
                              'View Details',
                              style: TextStyle(
                                color: Color(0xff252A34),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), 
                
              ],
            ),
          ),
        ),

      ), 
         
    );
  }

  Widget buildSheet() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 2,
            width: 40,
            color: Colors.black,
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              // padding: EdgeInsets.all(16),
              // height: 400,
              child: Column(
                children: [
                  // 
                  //
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cases today',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FutureBuilder<Tcases>(
                            future: getJsonData(),
                            builder: (BuildContext context, Snapshot) {
                              if (Snapshot.hasData) {
                                final covid = Snapshot.data;
                                return Text(
                                  '${covid?.todayCases}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (Snapshot.hasError) {
                                return Text(Snapshot.error.toString());
                              } else
                                return CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                );
                            }),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recovered today',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FutureBuilder<Tcases>(
                            future: getJsonData(),
                            builder: (BuildContext context, Snapshot) {
                              if (Snapshot.hasData) {
                                final covid = Snapshot.data;
                                return Text(
                                  '${covid?.todayRecovered}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (Snapshot.hasError) {
                                return Text(Snapshot.error.toString());
                              } else
                                return CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                );
                            }),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deaths today',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FutureBuilder<Tcases>(
                            future: getJsonData(),
                            builder: (BuildContext context, Snapshot) {
                              if (Snapshot.hasData) {
                                final covid = Snapshot.data;
                                return Text(
                                  '${covid?.todayDeaths}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (Snapshot.hasError) {
                                return Text(Snapshot.error.toString());
                              } else
                                return CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                );
                            }),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Critical',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FutureBuilder<Tcases>(
                            future: getJsonData(),
                            builder: (BuildContext context, Snapshot) {
                              if (Snapshot.hasData) {
                                final covid = Snapshot.data;
                                return Text(
                                  '${covid?.critical}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (Snapshot.hasError) {
                                return Text(Snapshot.error.toString());
                              } else
                                return CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                );
                            }),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total affected Countries',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        FutureBuilder<Tcases>(
                            future: getJsonData(),
                            builder: (BuildContext context, Snapshot) {
                              if (Snapshot.hasData) {
                                final covid = Snapshot.data;
                                return Text(
                                  '${covid?.affectedCountries}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                );
                              } else if (Snapshot.hasError) {
                                return Text(Snapshot.error.toString());
                              } else
                                return CircularProgressIndicator(
                                  valueColor:
                                      AlwaysStoppedAnimation<Color>(Colors.black),
                                );
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              
            ),
          ),
          
        ],
        
      );
      
}
