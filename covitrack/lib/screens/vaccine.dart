import 'package:flutter/material.dart';
import 'package:covitrack/vaccineinfo/covaxin.dart';
import 'package:covitrack/vaccineinfo/covishield.dart';
import 'package:covitrack/vaccineinfo/sputnik.dart';
class VaccineInfo extends StatefulWidget {
  @override
  _VaccineInfoState createState() => _VaccineInfoState();
}

class _VaccineInfoState extends State<VaccineInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {

        }),
        title: Text("VACCINE INFORMATION"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {

          }),
        ],
      ),
      body:Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [Colors.purple.shade300,Colors.blueAccent],
             begin: Alignment.topLeft,
             end: Alignment.bottomRight
           )
         ),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Information about COVISHIELD , COVAXIN and SPUTNIK-V",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 40,),
            ElevatedButton(


              child: Text('Covishield',
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
              style: ElevatedButton.styleFrom( elevation: 15,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                primary: Colors.blue,
                  padding:EdgeInsets.all(38),


               ),

              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Covishield()));
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              child: Text("Covaxin",
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
              style: ElevatedButton.styleFrom( elevation: 15,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
                  primary: Colors.cyan,
                padding:EdgeInsets.all(45),),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Covaxin()));
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              child: Text("Sputnik-V",
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
              style: ElevatedButton.styleFrom( elevation: 15,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Colors.lightBlueAccent,
                  padding:EdgeInsets.all(41)
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sputnik()));
              },
            ),


          ],
        ),
      ),
    );
  }
}
