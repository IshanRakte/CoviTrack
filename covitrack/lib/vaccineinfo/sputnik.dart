import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(Sputnik());
}

class Sputnik extends StatelessWidget {

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
                          style: TextStyle( fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),SizedBox(height: 20,),
                      Text('Appearance: The solution is Colourless.',
                          textAlign: TextAlign.center,
                          style: TextStyle( fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),SizedBox(height: 20,),
                      Text(
                        'Price: Rs 995-1145',
                        style: TextStyle( fontSize: 18,
                          // fontWeight: FontWeight.bold,
                              color: Colors.white

                        ),
                        textAlign: TextAlign.left,
                      ),
                      // Text('Rs 995-1200',
                      //     textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //         color: Colors.white

                      //     )),
                      SizedBox(height: 20,),
                      Text('Gap between two doses: 3-4 weeks',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                              color: Colors.white

                          )),
                          SizedBox(height: 20,),
                      Text(
                          'Age: Approved for 18+(Dose adjustments for every age group may vary',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                             fontSize: 18,
                              color: Colors.white

                          )),SizedBox(height: 20,),


                          Text(
                          'Note: If you have suffered from Covid-19 before or after 1st dose of vaccination then the Ministry of Health and Family Welfare (MoHFW) suggests to take the vaccine after 3 months.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                             fontSize: 18,
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
