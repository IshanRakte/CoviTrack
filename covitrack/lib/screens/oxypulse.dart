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
        appBar: AppBar(
          title: Text('Oxy Calculator'),
          centerTitle: true,
          backgroundColor: Colors.teal[500],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Enter your Oxygen Level",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
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
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(height: 40.0),
              Container(
                width: 125.0,
                height: 50.0,
                child: RaisedButton(
                  splashColor: Colors.greenAccent,
                  color: Colors.teal[500],
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
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
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              )
            ])));
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
        appBar: AppBar(
          title: Text('Pulse Calculator'),
          centerTitle: true,
          backgroundColor: Colors.teal[500],
        ),
        backgroundColor: Colors.blueGrey[800],
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Enter your Pulse Level : ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
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
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(height: 40.0),
              Container(
                width: 125.0,
                height: 50.0,
                child: RaisedButton(
                  splashColor: Colors.greenAccent,
                  color: Colors.teal[500],
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    setState(() {
                      if (pulse >= 60 && pulse <= 100) {
                        sugg = "Your Pulse Rate is in Normal range";
                      } else if (pulse > 100 && pulse <= 200) {
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
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              )
            ])));
  }
}
