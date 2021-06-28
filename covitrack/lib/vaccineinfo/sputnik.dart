import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(Sputnik());
}

class Sputnik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sputnik-V',
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String str = '';
  String str2 = '';
  int a = 0;
  int date;

  void yespressed(int a) {
    String textstr = '';
    if (a == 1) {
      textstr =
          'Enter the date of your 1st dose for Sputnik-V Vaccine in the form DDMMYYYY';
      textstr = ("Take the 2nd dose of vaccine within 21-28 days from $date. ");
    } else
      textstr = 'Great, you are now vaccinated with SPUTNIK-V!';

    setState(() {
      str = textstr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPUTNIK-V'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple.shade300, Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'SPUTNIK-V',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(''),
            Text(''),
            Text(
                'Made by the Gamaleya Research Institute of Epidemiology and Microbiology in Russia. In India, Dr. Reddy’s Laboratories is the local distribution partner for Sputnik-V',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('Appearance: The solution is Colourless.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text(
              'Price:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            Text('Rs 995',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('Gap between two doses: 3-4 weeks',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text(
                'Age: Approved for 18+(Dose adjustments for every age group may vary',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('Are you Vaccinated with SPUTNIK-V?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text(''),
            Text('Press 1 if taken 1st dose of the vaccine.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text('Press 2 if taken both the doses of the vaccine.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      yespressed(1);
                    },
                    child: Text(
                      '1',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
                TextButton(
                    onPressed: () {
                      yespressed(2);
                    },
                    child: Text(
                      '2',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    )),
              ],
            ),
            Container(
              child: TextField(
                onChanged: (value) {
                  date = int.parse(value);
                },
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[35],
                    hintText: 'Date of 1st Dose',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        borderSide: BorderSide.none)),
              ),
            ),
            Center(
              child: Text(str == null ? "" : "${str.toString()}",style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
