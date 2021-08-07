import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Symptoms extends StatelessWidget {
  static String route = '/another';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         color: Color(0xff08D9D6),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Colors.greenAccent.shade400, Colors.blue],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   )
        // ),
        child: Center(
          child: SafeArea(
            child: Column(
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
                      'Symptoms',
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
                      SizedBox(height: 20,),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        
                        Container(
                          // height: 400,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            // clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Image.asset('assets/common_sym.jpeg',width: 65,),
                                    ),
                                    SizedBox(height: 18,),
                                    Text(
                                      'COMMON',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    buildText(context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          // height: 400,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            // clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Image.asset('assets/mod_sym.jpeg',width: 65,),
                                    ),
                                    SizedBox(height: 18,),
                                    Text(
                                      'MODERATE',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    buildText1(context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          // height: 400,
                          width: 320,
                          child: Card(
                            color: Colors.grey[100],
                            // clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 10,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                      child: Image.asset('assets/unwell.jpeg',width: 85,),
                                    ),
                                    SizedBox(height: 18,),
                                    Text(
                                      'RARE',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0,
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    buildText2(context),
                                  ],
                                ),
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
}

Widget buildText(BuildContext context) => ExpansionTile(
  childrenPadding: EdgeInsets.all(16),
  // collapsedIconColor: Color(0xff08D9D6),
  iconColor: Color(0xff08D9D6),
  textColor: Color(0xff08D9D6),
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('- Fever',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Dry cough',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Tiredness',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Loss of taste and smell',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
      ],
    ),
  ],
);

Widget buildText1(BuildContext context) => ExpansionTile(
  childrenPadding: EdgeInsets.all(16),
  // collapsedIconColor: Color(0xff08D9D6),
  iconColor: Color(0xff08D9D6),
  textColor: Color(0xff08D9D6),
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('- Difficulty in breathing',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Chest pain or pressure',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Aches and pains',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Sore throat',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Headache',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
      ],
    ),
  ],
);

Widget buildText2(BuildContext context) => ExpansionTile(
  childrenPadding: EdgeInsets.all(16),
  // collapsedIconColor: Color(0xff08D9D6),
  iconColor: Color(0xff08D9D6),
  textColor: Color(0xff08D9D6),
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('- Diarrhoea',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Conjunctivitis',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Loss of speech or movement',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- A rash on skin',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
        Text('- Discolouration of fingers or toes',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
      ],
    ),
  ],
);
