import 'package:covitrack/cities/cities2.dart';
import 'package:flutter/material.dart';
import 'package:covitrack/cities/cities1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Color(0xffe65758),
        child: Center(
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
                          icon: FaIcon(FontAwesomeIcons.angleLeft,
                          // color: Color(0xff252A34),
                          color: Colors.white,
                          )
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
                      'Emergency',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          // color: Color(0xff252A34)
                          color: Colors.white
                          ),
                    ),
                  ],
                ),
                Divider(
                  height: 15,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  // color: Color(0xff252A34),
                  color: Colors.white
                ),
                      SizedBox(height: 20,),
                
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        //---------

                        Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Pune()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Pune  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Mumbai()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Mumbai  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),



              //--------------------------------------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Bangalore()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Bangalore  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Kolkata()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Kolkata  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //-------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Delhi()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delhi  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Chennai()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Chennai  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Hyderabad()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Hyderabad  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Amritsar()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Amritsar  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Ahmedabad()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ahmedabad  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                 
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 2, color: Colors.black,),
                    ),
                    elevation: 4,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Goa()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 120,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Goa  >',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),





                        //
                        
                        //---------
                        
                             
                        //        SizedBox(height: 20),
                        // Card(
                        //   color: Colors.white,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     side: BorderSide(
                        //       width: 2,
                        //       color: Colors.black,
                        //     ),
                        //   ),
                        //   child: Container(
                        //     width: 370,
                        //     padding: EdgeInsets.all(10),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Container(
                        //           height: 40,
                        //           child: TextButton(
                        //             onPressed: () {
                        //               Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => Ahmedabad()));
                        //             },
                        //             child: Text(
                        //               'Ahmedabad  >',
                        //               style: TextStyle(
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        //           SizedBox(height: 20),
                        // Card(
                        //   color: Colors.white,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     side: BorderSide(
                        //       width: 2,
                        //       color: Colors.black,
                        //     ),
                        //   ),
                        //   child: Container(
                        //     width: 370,
                        //     padding: EdgeInsets.all(10),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Container(
                        //           height: 40,
                        //           child: TextButton(
                        //             onPressed: () {
                        //               Navigator.push(
                        //                   context,
                        //                   MaterialPageRoute(
                        //                       builder: (context) => Goa()));
                        //             },
                        //             child: Text(
                        //               'Goa  >',
                        //               style: TextStyle(
                        //                 color: Colors.black,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        
                        
                        
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
}
