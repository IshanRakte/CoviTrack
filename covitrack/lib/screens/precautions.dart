import 'package:flutter/material.dart';
class Precautions extends StatelessWidget {
  static String route = '/precaution';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.greenAccent.shade400, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
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
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Precautions',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.white,
                ),
                SizedBox(height: 20,),

                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/socialdist.jpeg',width: 230,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Maintain a safe distance from anyone who is coughing or sneezing.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/unwell.jpeg',width: 140,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Cover your nose and mouth with your bent elbow or a tissue when you cough or sneeze.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/doctor.jpeg',width: 160,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Stay home if you feel unwell.\nIf you have a fever, cough and difficulty breathing, seek medical attention.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/handwash.jpeg',width: 140,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Clean your hands often.\nUse soap and water, or an alcohol-based hand rub.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/mask.jpeg',width: 140,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Wear a mask when physical distancing is not possible.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        Container(
                          // height: 200,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Image.asset('assets/mask.jpeg',width: 140,),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 100,
                                  child: Text(
                                    'Don’t touch your eyes, nose or mouth.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //
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
