import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  static String route = '/another';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.greenAccent.shade400, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
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
                                onPressed: (){
                                  Navigator.pop(context);
                                }, 
                                icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Symptoms',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.white
                            ),
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
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Row(
      children: [
        Text(
          '- Fever\n- Dry cough\n- Tiredness\n- Loss of taste and smell',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ],
);

Widget buildText1(BuildContext context) => ExpansionTile(
  childrenPadding: EdgeInsets.all(16),
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Row(
      children: [
        Text(
          '- Difficulty in breathing\n- Chest pain or pressure\n- Aches and pains\n- Sore throat\n- Headache',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ],
);

Widget buildText2(BuildContext context) => ExpansionTile(
  childrenPadding: EdgeInsets.all(16),
  title: Text(
    'Expand', 
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  children: [
    Row(
      children: [
        Text(
          '- Diarrhoea\n- Conjunctivitis\n- Loss of speech or movement\n- A rash on skin\n- Discolouration of fingers or toes',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ],
);
