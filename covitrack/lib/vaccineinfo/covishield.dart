import 'dart:io';

import 'package:flutter/material.dart';
void main() {
 runApp(Covishield());
}

class Covishield extends StatelessWidget {

  @override
 Widget build(BuildContext context){
 return MaterialApp(
     debugShowCheckedModeBanner: false,
      title:'Covishield',
         home:HomePage()
     );
 }
}

class HomePage extends StatefulWidget{
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  String str = '';
  String str2 = '';
  int a = 0;
  int date;

  void yespressed(int a){

    String textstr = '';
    if (a==1){
      textstr = 'Enter the date of your 1st dose for COVISHIELD Vaccine in the form DDMMYYYY';
      textstr =("Take the 2nd dose of vaccine within 84-112 days from $date. ");

    }
    else textstr = 'Great, you are now vaccinated! Thank you showing your trust in Indian Vaccine COVISHIELD';

    setState(() {
      str = textstr;
    });
  }

 @override
   Widget build(BuildContext context){
     return Scaffold(
      appBar:AppBar(
       title:Text('Covishield'),
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
          SizedBox(height: 10,),
          Text('COVISHIELD',
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
               ),),
          Text(''),
          Text(''),
          Text('The Serum Institute Of India and Indian council are jointly conducting a phase II/III.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Appearance: The solution is Colourless to slightly Brown with pH=6.6.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Price:',
            style: TextStyle(
              fontWeight:FontWeight.bold,),
              textAlign: TextAlign.left,),
          Text('Rs 300 in government hospital',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Rs 600 in private hospital',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Gap between the Two doses: 12-16 weeks',
            textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Age: Approved for 18+(Dose adjustments for every age group may vary',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
          Text('Are you Vaccinated with COVISHIELD?',
            textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight:FontWeight.bold,)),
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
   Text(str)],),


       ),


    );
  }
}
