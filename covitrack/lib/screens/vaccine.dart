import 'package:flutter/material.dart';
import 'package:covitrack/vaccineinfo/covaxin.dart';
import 'package:covitrack/vaccineinfo/covishield.dart';
import 'package:covitrack/vaccineinfo/sputnik.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class VaccineInfo extends StatefulWidget {
  @override
  _VaccineInfoState createState() => _VaccineInfoState();
}

class _VaccineInfoState extends State<VaccineInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Colors.tealAccent[700],
      //   title: Text("Vaccine Information"),
      // ),
      body:Container(
        color: Color(0xff08D9D6),
        //  decoration: BoxDecoration(
        //    gradient: LinearGradient(
        //      colors: [Colors.greenAccent.shade400, Colors.blue],
        //      begin: Alignment.topLeft,
        //      end: Alignment.bottomRight
        //    )
        //  ),


        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 5,),
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }, 
                                  // icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                                  icon: FaIcon(FontAwesomeIcons.angleLeft,color: Color(0xff252A34),)
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Vaccine Info',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Color(0xff252A34)
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xff252A34),
                        ),
                        SizedBox(height: 20,),
              Text("Information about COVISHIELD, COVAXIN and SPUTNIK-V",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Color(0xff252A34)
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
                  primary: Colors.lightBlueAccent,
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
                    primary: Colors.blue,
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
                    primary: Colors.blueAccent,
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
      ),
    );
  }
}
