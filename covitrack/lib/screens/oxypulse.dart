import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Oxy extends StatefulWidget {
  Oxy({Key key}) : super(key: key);

  @override
  _OxyState createState() => _OxyState();
}

class _OxyState extends State<Oxy> {
  int oxy;
  String sugg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Oxy Calculator'),
        //   centerTitle: true,
        //   backgroundColor: Colors.teal[500],
        // ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(children: <Widget>[

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
                      'Oxygen Level',
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
                  height: 25.0,
                ),
                Container(
                  // padding: EdgeInsets.all(5),
                  child: Image.asset('assets/oxy.jpg',width: 230,),
                ),
                SizedBox(
                  height: 25.0,
                ),

                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Enter your Oxygen Level",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Color(0xff252A34),
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            onChanged: (value) {
                              oxy = int.parse(value);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[350],
                                hintText: 'Oxygen Level',
                                icon: FaIcon(
                                  FontAwesomeIcons.lungs,
                                  color: Color(0xff252A34),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide.none)),
                          ),
                          SizedBox(height: 40.0),
                          Container(
                            width: 125.0,
                            height: 50.0,
                            child: TextButton(
                              // splashColor: Colors.greenAccent,
                              // color: Colors.teal[500],
                              child: Text(
                                "Calculate",
                                style: TextStyle(
                                    color: Color(0xff252A34),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (oxy >= 95 && oxy <= 100) {
                                    sugg = "Your Oxygen Level is in Normal range";
                                  } else if (oxy >= 90 && oxy < 95) {
                                    sugg =
                                        'If you have Chronic Lung Disease or Sleep Apnea then your Oxygen Level is in Normal range';
                                  } else if (oxy < 90 && oxy >= 40) {
                                    sugg =
                                        'Seek Medical acquaintance immediately, no need to panic!';
                                  } else {
                                    sugg = 'Invalid User Input';
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            sugg == null ? "" : "${sugg.toString()}",
                            style: TextStyle(
                                fontSize: 22,
                                color: Color(0xff252A34),
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ])),
        ));
  }
}

class Pulse extends StatefulWidget {
  Pulse({Key key}) : super(key: key);

  @override
  _PulseState createState() => _PulseState();
}

class _PulseState extends State<Pulse> {
  int pulse;
  String sugg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Pulse Calculator'),
        //   centerTitle: true,
        //   backgroundColor: Colors.teal[500],
        // ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(children: <Widget>[
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
                      'Pulse Level',
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
                  height: 25.0,
                ),
                Container(
                  // padding: EdgeInsets.all(5),
                  child: Image.asset('assets/pulse.jpg',width: 230,),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      
                        
                          child: Column(
                            children: [
                              
                              Text(
                                "Enter your Pulse Level : ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Color(0xff252A34),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                onChanged: (value) {
                                  pulse = int.parse(value);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'Pulse Level',
                                    icon: FaIcon(
                                      FontAwesomeIcons.heartbeat,
                                      color: Color(0xff252A34),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide.none)),
                              ),
                              SizedBox(height: 40.0),
                              Container(
                                width: 125.0,
                                height: 50.0,
                                child: TextButton(
                                  // splashColor: Colors.greenAccent,
                                  // color: Colors.teal[500],
                                  child: Text(
                                    "Calculate",
                                    style: TextStyle(
                                        color: Color(0xff252A34),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (pulse >= 60 && pulse <= 100) {
                                        sugg = "Your Pulse Rate is in Normal range";
                                      } else if (pulse > 100 && pulse <= 140) {
                                        sugg =
                                            'Your Pulse Rate is Medium, seek Medical Acquaintance if necessary';
                                      } else if (pulse > 140 && pulse <= 200) {
                                        sugg =
                                            'Your Pulse Rate is High, seek Medical Acquaintance';
                                      } else if (pulse < 60 && pulse >= 20) {
                                        sugg =
                                            'Your Pulse Rate is Low, seek Medical Acquaintance';
                                      } else {
                                        sugg = 'Invalid User Input';
                                      }
                                    });
                                  },
                                ),
                              ),
                              SizedBox(height: 30),
                              Text(
                                sugg == null ? "" : "${sugg.toString()}",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xff252A34),
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        
                    
                    ),
                  ),
                )
              ])),
        ));
  }
}
