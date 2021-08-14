import 'dart:io';

import 'package:covitrack/screens/vaccine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(Covaxin());
}

class Covaxin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('COVAXIN'),
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
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: FaIcon(
                          FontAwesomeIcons.angleLeft),
                            color: Color(0xff252A34),
                          ),
                        
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'COVAXIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xff252A34)),
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
                SizedBox(height: 5,),
              // SizedBox(
              //   height: 50,
              // ),
              Expanded(
                child: SingleChildScrollView(
                   physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        // padding: EdgeInsets.all(5),
                        child: Image.asset('assets/covaxin2.png',width: 150,),
                      ),
          
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
                          "COVAXINTM, India's indigenous COVID-19 vaccine Bharat Biotech is developed in collaboration with the ICMR-NIV.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                              SizedBox(height: 20,),
                      Text('Appearance: The solution is Colourless.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )), SizedBox(height: 20,),
                      Text('Price: Rs 400 in government hospitals',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                      // Text('Rs 400 in government hospitals',
                      //     textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       fontSize: 18,
                      //       // fontWeight: FontWeight.bold,
                      //         color: Colors.white

                      //     )),
                      Text(
                        'Rs 1200-1410 in Private hospitals',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                              color: Colors.white

                        ),
                      ),
                          SizedBox(height: 20,),
                      Text('Gap between the Two doses: 4-6 week',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                              SizedBox(height: 20,),
                      Text(
                          'Age : Approved for above 12+(Dose adjustments for every age group may vary)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )), SizedBox(height: 20,),
                           Text(
                          'Note: If you have suffered from Covid-19 before or after 1st dose of vaccination then the Ministry of Health and Family Welfare (MoHFW) suggests to take the vaccine after 3 months.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                             fontSize: 18,
                              color: Colors.white

                          )),
                            SizedBox(height: 10,)
                              ],
                            ),
                          ),
                        ),
                      ),
        
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
