import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(Covishield());
}

class Covishield extends StatelessWidget {
  @override



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Covishield'),
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
                        'COVISHIELD',
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
                SizedBox(height: 20,),


              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        // padding: EdgeInsets.all(5),
                        child: Image.asset('assets/covishield.jpg',width: 230,),
                      ),
                      SizedBox(height: 10,),
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
                            'It was developed by Oxford University in partnership with British-Swedish firm AstraZeneca. It is being manufactured in India by Pune-based Serum Institute of India (SII).',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 18,
                              color: Colors.white

                            )),
                             SizedBox(height: 20,),
                        Text(
                            'Appearance: The solution is Colourless to slightly Brown with pH=6.6.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 18,
                              color: Colors.white

                            )),
                             SizedBox(height: 20,),
                        Text(
                          'Price: Currently FREE in Government hospitals',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                             fontSize: 18,
                              color: Colors.white

                          ),
                          textAlign: TextAlign.left,
                        ),
                        // Text('Currently FREE in Government hospitals',
                        //     textAlign: TextAlign.left,
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.white

                        //     )),
                        Text('Rs 500-780 in Private hospitals',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 18,
                              color: Colors.white

                            )), SizedBox(height: 20,),
                        Text('Gap between the Two doses: 12-16 weeks',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 18,
                              color: Colors.white

                            )), SizedBox(height: 20,),
                        Text(
                            'Age: Approved for 18+(Dose adjustments for every age group may vary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                               fontSize: 18,
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
                      SizedBox(height: 15),
                     
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
