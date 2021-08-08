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
      // appBar: AppBar(
      //   title: Text('SPUTNIK-V'),
      // ),
      body: Container(
        color: Color(0xff08D9D6),

        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [Color.fromRGBO(255, 148, 130, 1), Color.fromRGBO(125, 119, 255, 1)],
        //         begin: Alignment.topLeft,
        //         end: Alignment.bottomRight)),
        alignment: Alignment.center,
        child: SafeArea(
          
          child: Column(
            children: [

              SizedBox(height: 5,),
                Row(
                  children: [
                    Row(
                      children: [
                        // IconButton(
                        //   onPressed: () {
                        //     Navigator.pop(context);
                        //   },
                        //   icon: Icon(
                        //     Icons.arrow_back_ios_new,
                        //     color: Colors.white,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'SPUTNIK-V',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                                              color: Color(0xff252A34),),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                                    color: Color(0xff252A34),
                ),
                SizedBox(height: 20,),

              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [

                      Container(
                        // padding: EdgeInsets.all(5),
                        child: Image.asset('assets/sputnik.jpg',width: 230,),
                      ),
                      SizedBox(height: 10,),                      

                      // Text(''),
                      // Text('Press 1 if taken 1st dose of the vaccine.',
                      //     textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //     )),
                      // Text('Press 2 if taken both the doses of the vaccine.',
                      //     textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //     )),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     TextButton(
                      //         onPressed: () {
                      //           yespressed(1);
                      //         },
                      //         child: Text(
                      //           '1',
                      //           style: TextStyle(
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.black87),
                      //         )),
                      //     TextButton(
                      //         onPressed: () {
                      //           yespressed(2);
                      //         },
                      //         child: Text(
                      //           '2',
                      //           style: TextStyle(
                      //               fontSize: 20,
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.black87),
                      //         )),
                      //   ],
                      // ),
                      // Container(
                      //   child: TextField(
                      //     onChanged: (value) {
                      //       date = int.parse(value);
                      //     },
                      //     keyboardType: TextInputType.datetime,
                      //     decoration: InputDecoration(
                      //         filled: true,
                      //         fillColor: Colors.grey[35],
                      //         hintText: 'Date of 1st Dose',
                      //         border: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(2.0),
                      //             borderSide: BorderSide.none)),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            // height: 50,
                            color: Color(0xff252A34),
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                        
                      Text(
                          'Made by the Gamaleya Research Institute of Epidemiology and Microbiology in Russia. In India, Dr. Reddy’s Laboratories is the local distribution partner for Sputnik-V',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                      Text('Appearance: The solution is Colourless.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                      Text(
                        'Price:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                              color: Colors.white

                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text('Rs 995-1200',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                      Text('Gap between two doses: 3-4 weeks',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                      Text(
                          'Age: Approved for 18+(Dose adjustments for every age group may vary',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                        // Text('Are you Vaccinated with COVISHIELD?',
                        //     textAlign: TextAlign.center,
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white
                        //     )),
                            SizedBox(height: 10,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(str == null ? "" : "${str.toString()}",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
