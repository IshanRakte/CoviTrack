import 'dart:io';

import 'package:covitrack/screens/vaccine.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Covaxin());
}

class Covaxin extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title:'Covaxin',
        home:VaccineInfo()
    );
  }
}

class VaccineInfo extends StatefulWidget{
  const VaccineInfo({ Key key }) : super(key: key);

  @override
  _VaccineInfoState createState() => _VaccineInfoState();
}

class _VaccineInfoState extends State<VaccineInfo> {




  String str = '';
  String str2 = '';
  int a = 0;
  int date;

  void yespressed(int a){

    String textstr = '';
    if (a==1){
      textstr = ('Enter the date of your 1st dose for COVAXIN Vaccine in the form DDMMYYYY');
      textstr =("Take the 2nd dose of vaccine within 28-42 days from $date. ");

    }
    else textstr = 'Great, you are now vaccinated! Thank you showing your trust in Indian Vaccine COVAXIN';

    setState(() {
      str = textstr;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('COVAXIN'),
      ),
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple.shade300,Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),

        alignment: Alignment.center,

        child:
        Column(
          children:[
            SizedBox(height: 50,),
            Text('COVAXIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
            Text(''),
            Text(''),
            Text(''),
            Text("COVAXINTM, India's indigenous COVID-19 vaccine Bharat Biotech is developed in collaboration with the ICMR-NIV.",
             textAlign: TextAlign.center,
              style: TextStyle(
              fontWeight:FontWeight.bold,)),
            Text('Appearance: The solution is Colourless.',
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text('Price:',
              textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text('Rs 400 in government hospita',
              textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text('Rs 1200 in private hospitals',
              textAlign: TextAlign.left,
              style: TextStyle(
              fontWeight:FontWeight.bold,),),
            Text('Gap between the Two doses:  4-6 week',
              textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text('Age: Age : Approved for above 12+(Dose adjustments for every age group may vary)',
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text(''),
            Text(''),

            Text('Press 1 if taken 1st dose of the vaccine.',
              textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Text('Press 2 if taken both the doses of the vaccine.',
              textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight:FontWeight.bold,)),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children:[
                TextButton(
                    onPressed: (){



                      yespressed(1);
                    },
                    child:Text('1',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight:FontWeight.bold,
                          color: Colors.black87
                      ),))

                ,

                TextButton(
                    onPressed: (){yespressed(2);
                    },
                    child: Text('2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      color: Colors.black87
                    ),)
                ),
              ],
            ),
            Expanded(child:
            TextField(
              onChanged: (value){
                date = int.parse(value);
              },
              keyboardType:
              TextInputType.datetime,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[35],
                  hintText: 'Date of 1st Dose',
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(2.0),
                      borderSide:
                      BorderSide.none
                  )
              ),

            ),),
            Text(str)],

        ),


      ),);
  }
}
