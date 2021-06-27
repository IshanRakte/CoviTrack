import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Pune extends StatefulWidget {
  //
  Pune({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _PuneState createState() => _PuneState();
}

class _PuneState extends State<Pune> {
  //
  Future<void> _launched;
  String phoneNumber = '';
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url,);
      }
    }
  }
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pune', style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 15.0),
              Card(
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Government",style: TextStyle(color: Colors.green[600], fontSize: 25, fontWeight: FontWeight.bold  ),),
                      Text("Poona Hospital", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                      SizedBox(height:5),
                      Text(
                        "Address: 27, Sadashiv Peth, Neighbor of Alka Talkies, Pune, Maharashtra 411030",
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 40,
                      child: TextButton(
                          child: const Text('Open In Google Maps', style: TextStyle(color: Colors.blue), ),
                          onPressed: () {
                            setState(() {
                              _launched = _launchUniversalLinkIos(
                                  'https://www.google.com/maps/dir//poona+hospital/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bc2c075f909f913:0x54d12ea7498c2ebe!2m2!1d73.8420697!2d18.5108143');
                            });
                          },
                        ),
                        
                      ),
                      Container(
                        height: 30,
                        child: TextButton(
                          child: const Text('Call',
                              style: TextStyle(fontSize: 15)),
                          onPressed: () {
                            setState(() {
                              _launched =
                                  _makePhoneCall('tel:(020) 24331706');
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Card(
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Private",style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold  ),),
                      Text("Jehangir Hospital",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                          SizedBox(height:5),
                      Text(
                        "Address: 32, Sasoon Road Opposite Railway Station, CentralExcise Colony, Sangamvadi, Pune, Maharashtra 411001",
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          child: const Text('Open In Google Maps'),
                          onPressed: () {
                            setState(() {
                              _launched = _launchUniversalLinkIos(
                                  'https://www.google.com/maps/dir//jehangir+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c05816d29283:0xfe98c3452724e113?sa=X&ved=2ahUKEwjagrLg_7bxAhVnH7cAHasjDfoQ9RcwJXoECGEQBQ');
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        child: TextButton(
                          child: const Text('Call',
                              style: TextStyle(fontSize: 15,)),
                          onPressed: () {
                            setState(() {
                              _launched = _makePhoneCall('tel:+912066819999');
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:15),
              Card(
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 370,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Private",style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold  ),),
                      Text("KEM Hospital",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                          SizedBox(height:5),
                      Text(
                        "Address: 489, Rasta Peth, Sardar Moodliar Road, Pune, 411011.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          child: const Text('Open In Google Maps'),
                          onPressed: () {
                            setState(() {
                              _launched = _launchUniversalLinkIos(
                                  'https://www.google.com/maps/dir//kem+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c067a2fd93e1:0x1d019a52420f9b1b?sa=X&ved=2ahUKEwiGro37_7bxAhX07XMBHR5bBQEQ9RcwJnoECFMQBQ');
                            });
                          },
                        ),
                      ),
                      Container(
                        height: 30,
                        child: TextButton(
                          child: const Text('Call',
                              style: TextStyle(fontSize: 15)),
                          onPressed: () {
                            setState(() {
                              _launched = _makePhoneCall('tel:+91 20 2621 7300');
                            });
                          },
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

// appBar: AppBar(
//         title: Text("Pune"),
//       ),
//       body: Container(
      
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height:20
//             ),
//             Text("Government KEM Hospital.489, Rasta Peth, Sardar Moodliar Road, Pune, 411011."),
//             ElevatedButton(
//               child: const Text('Open In Google Maps'),
//               onPressed: () {
//                 setState(() {
//                   _launched = _launchUniversalLinkIos('https://www.google.com/maps/dir//kem+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c067a2fd93e1:0x1d019a52420f9b1b?sa=X&ved=2ahUKEwjysrn7o4PxAhVzIbcAHeR6AZgQ9RcwJ3oECFwQBQ');
//                 });
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Call'),
//               onPressed: () {
//                 setState(() {
//                   _launched = _makePhoneCall('tel:+91 20 6603 7460');
//                 });
//               },
//             ),
          
//             SizedBox(
//               height: 20.0,
//             ),

//             Text("Government Jehangir Hospital 32, Sasoon Road Opposite Railway Station, CentralExcise Colony, Sangamvadi, Pune, Maharashtra 411001"),
//             ElevatedButton( child: const Text('Open In Google Maps'),
//               onPressed: () {
//                 setState(() {
//                   _launched = _launchUniversalLinkIos('https://www.google.com/maps/dir//jehangir+hospital+pune/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c05816d29283:0xfe98c3452724e113?sa=X&ved=2ahUKEwi7qN-ZpoPxAhXM_XMBHcHAC1QQ9RcwI3oECF8QBQ');
//                 });
//               },),
//               ElevatedButton(
//               child: const Text('Call'),
//               onPressed: () {
//                 setState(() {
//                   _launched = _makePhoneCall('tel:+912066819999');
//                 });
//               },
//             ),

//           ],
//         ),
//       ),
//     );