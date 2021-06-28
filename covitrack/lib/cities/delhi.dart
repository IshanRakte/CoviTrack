import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Delhi extends StatefulWidget {
  Delhi({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _DelhiState createState() => _DelhiState();
}

class _DelhiState extends State<Delhi> {
  Future<void> _launched;
  String phoneNumber = '';
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(
          url,
        );
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
      appBar: AppBar(
        title: Text(
          'Delhi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      
      body: SingleChildScrollView(                  //---> scroll view
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
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
                          Text(
                            "Government",
                            style: TextStyle(
                                color: Colors.green[600],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("AIIMS Delhi",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: AIIMS Delhi, Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi 110029",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text(
                                'Open In Google Maps',
                                style: TextStyle(color: Colors.blue),
                              ),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//aiims+delhi/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x390ce26f903969d7:0x8367180c6de2ecc2?sa=X&ved=2ahUKEwi6iPbmpajxAhVMOisKHXuRDP8Q9RcwAHoECAYQBQ');
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
                                  _launched = _makePhoneCall('tel:9115444155');
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
                          Text(
                            "Private",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Sir Ganga Ram Hospital",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: Sir Ganga Ram Hospital Marg, Old Rajinder Nagar, New Rajinder Nagar, New Delhi, Delhi 110060",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text('Open In Google Maps'),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//sir+ganga+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x390d02a17c4ab835:0xecd838535c0fa0f6?sa=X&ved=2ahUKEwiP3--ipqjxAhXqzDgGHba4CqMQ9RcwDnoECEQQBQ');
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 30,
                            child: TextButton(
                              child: const Text('Call',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              onPressed: () {
                                setState(() {
                                  _launched = _makePhoneCall('tel:93114 07393');
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
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
                          Text(
                            "Private",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Metro Hospital & Heart Institute",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          Text(
                            "Address: 14, Ring Rd, Near Amar Kaloni Market, Nirmal Puri, Block B, Lajpat Nagar IV, Lajpat Nagar 4, New Delhi, Delhi 110024",
                            style: TextStyle(fontSize: 18),
                          ),
                          Container(
                            height: 40,
                            child: TextButton(
                              child: const Text('Open In Google Maps'),
                              onPressed: () {
                                setState(() {
                                  _launched = _launchUniversalLinkIos(
                                      'https://www.google.com/maps/dir//Metro+Hospital+%26+Heart+Institute,+Lajpat+Nagar,+Delhi,+14,+Ring+Rd,+Near+Amar+Kaloni+Market,+Nirmal+Puri,+Block+B,+Lajpat+Nagar+IV,+Lajpat+Nagar+4,+New+Delhi,+Delhi+110024/@28.5647449,77.2415924,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce3b1a0dd19b3:0xc1176dc05852d734!2m2!1d77.2437811!2d28.5647402');
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
                                      _makePhoneCall('tel:+91 (011) 4242 4343');
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
        ),
      ),
    );
  }
}
