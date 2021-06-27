import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bangalore extends StatefulWidget {
  const Bangalore({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _BangaloreState createState() => _BangaloreState();
}

class _BangaloreState extends State<Bangalore> {
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
          'Bangalore',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
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
                      Text(
                        "Government",
                        style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Victoria Hospital",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(
                        "Address: Fort Rd, near City Market, New Tharagupet, Bengaluru, Karnataka 560002",
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
                                  'https://www.google.com/maps/dir//victoria+hospital+bangalore/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae15e2d61081e7:0x6e7d0833b6fa721e!2m2!1d77.5738074!2d12.9635669');
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
                              _launched = _makePhoneCall('tel:080 2670 1150');
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
                      Text("Apollo Hospital Sheshadripuram",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(
                        "Address: No. 1, Old No. 28, Platform Road Near Mantri Square Mall, Seshadripuram, Bengaluru, Karnataka 560020",
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          child: const Text('Open In Google Maps'),
                          onPressed: () {
                            setState(() {
                              _launched = _launchUniversalLinkIos(
                                  'https://www.google.com/maps/dir//Apollo+Hospitals+Sheshadripuram+Bangalore,+No.+1,+Old+No.+28,+Platform+Road+Near+Mantri+Square+Mall,+Seshadripuram,+Bengaluru,+Karnataka+560020//data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae17ddf4a463e3:0x415a988bfb0b66c8!2m2!1d77.5726879!2d12.9883022');
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
                              _launched = _makePhoneCall('tel:080 4668 8888');
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
                      Text("Aster CMI Hospital",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text(
                        "Address: #43/2, New Airport Road, NH-7, Outer Ring Rd, Sahakar Nagar, Bengaluru, Karnataka 560092",
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        height: 40,
                        child: TextButton(
                          child: const Text('Open In Google Maps'),
                          onPressed: () {
                            setState(() {
                              _launched = _launchUniversalLinkIos(
                                  'https://www.google.co.in/maps/dir//aster+cmi+hospital/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae1789755331d3:0x622ebc0aa55f732c!2m2!1d77.5919226!2d13.054743');
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
                                  _makePhoneCall('tel:080 4342 0100');
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
