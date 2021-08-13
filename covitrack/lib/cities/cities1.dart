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
      body: SafeArea(
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Bangalore',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                //---> scroll view
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Card(
                            elevation: 6,
                            shadowColor: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.green, Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Government",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Victoria Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Fort Rd, near City Market, New Tharagupet, Bengaluru, Karnataka 560002",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                   Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:080 2670 1150');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//victoria+hospital+bangalore/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae15e2d61081e7:0x6e7d0833b6fa721e!2m2!1d77.5738074!2d12.9635669');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Apollo Hospital Sheshadripuram",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: No. 1, Old No. 28, Platform Road Near Mantri Square Mall, Seshadripuram, Bengaluru, Karnataka 560020",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                   Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:080 4668 8888');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//Apollo+Hospitals+Sheshadripuram+Bangalore,+No.+1,+Old+No.+28,+Platform+Road+Near+Mantri+Square+Mall,+Seshadripuram,+Bengaluru,+Karnataka+560020//data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae17ddf4a463e3:0x415a988bfb0b66c8!2m2!1d77.5726879!2d12.9883022');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Aster CMI Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: #43/2, New Airport Road, NH-7, Outer Ring Rd, Sahakar Nagar, Bengaluru, Karnataka 560092",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                               Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:080 4342 0100');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.co.in/maps/dir//aster+cmi+hospital/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bae1789755331d3:0x622ebc0aa55f732c!2m2!1d77.5919226!2d13.054743');
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
            ),
          ],
        ),
      ),
    );
  }
}

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
      body: SafeArea(
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Delhi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                //---> scroll view
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Card(
                            elevation: 6,
                            shadowColor: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.green, Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Government",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("AIIMS Delhi",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: AIIMS Delhi, Sri Aurobindo Marg, Ansari Nagar, Ansari Nagar East, New Delhi, Delhi 110029",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched =
                                              _makePhoneCall('tel:9115444155');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//aiims+delhi/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x390ce26f903969d7:0x8367180c6de2ecc2?sa=X&ved=2ahUKEwi6iPbmpajxAhVMOisKHXuRDP8Q9RcwAHoECAYQBQ');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Sir Ganga Ram Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Sir Ganga Ram Hospital Marg, Old Rajinder Nagar, New Rajinder Nagar, New Delhi, Delhi 110060",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched =
                                              _makePhoneCall('tel:93114 07393');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//sir+ganga+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x390d02a17c4ab835:0xecd838535c0fa0f6?sa=X&ved=2ahUKEwiP3--ipqjxAhXqzDgGHba4CqMQ9RcwDnoECEQQBQ');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Metro Hospital & Heart Institute",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 14, Ring Rd, Near Amar Kaloni Market, Nirmal Puri, Block B, Lajpat Nagar IV, Lajpat Nagar 4, New Delhi, Delhi 110024",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                   Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            
                                              )),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:+91 (011) 4242 4343');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//Metro+Hospital+%26+Heart+Institute,+Lajpat+Nagar,+Delhi,+14,+Ring+Rd,+Near+Amar+Kaloni+Market,+Nirmal+Puri,+Block+B,+Lajpat+Nagar+IV,+Lajpat+Nagar+4,+New+Delhi,+Delhi+110024/@28.5647449,77.2415924,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390ce3b1a0dd19b3:0xc1176dc05852d734!2m2!1d77.2437811!2d28.5647402');
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
            ),
          ],
        ),
      ),
    );
  }
}

class Kolkata extends StatefulWidget {
  Kolkata({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _KolkataState createState() => _KolkataState();
}

class _KolkataState extends State<Kolkata> {
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
      // appBar: AppBar(title: Text('Kolkata', style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),

      body: SafeArea(
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kolkata',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                //---> scroll view and padding added
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Card(
                            elevation: 6,
                            shadowColor: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.green, Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Government",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("M R Bangur Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 241, Deshpran Sasmal Road, Netajinagar, Rajendra Prasad Colony, Tollygunge, Kolkata, 700033",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                            Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:088207 02070');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//mr+bangur+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0270c6c4eb0edd:0xab86f4a289f70fd8?sa=X&ved=2ahUKEwjwuYPCgbfxAhUXb30KHTfVDicQ9RcwFXoECDoQBQ');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Columbia Asia Hospital Salt Lake",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: IB-193, IB Block, Sector III, Bidhannagar, Kolkata, West Bengal 700091",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:033 6600 3300');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//columbia+asia+kolkata/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0275c1513d0b19:0xeaf5597a0cee8cb?sa=X&ved=2ahUKEwjimofegrfxAhX2lEsFHVe2AM0Q9RcwHnoECEwQBA');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Peerless Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 360, Pancha Sayar Rd, Sahid Smirity Colony, Pancha Sayar, Kolkata, West Bengal 700094",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:033 4011 1222');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//peerless+hospital+kolkata/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0271652e763a03:0x93ab7f119f9d152b?sa=X&ved=2ahUKEwjc3K-lg7fxAhUGWX0KHVRNBfYQ9RcwHXoECEkQBA');
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
            ),
          ],
        ),
      ),
    );
  }
}

class Mumbai extends StatefulWidget {
  Mumbai({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _MumbaiState createState() => _MumbaiState();
}

class _MumbaiState extends State<Mumbai> {
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
      body: SafeArea(
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Mumbai',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                //---> scroll view
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Card(
                            elevation: 6,
                            shadowColor: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              // width: 370,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.green, Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Government",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("King Edward Memorial Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Acharya Donde Marg, Parel East, Parel, Mumbai, Maharashtra 400012",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                         Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:022 2410 7000');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//king+edward+memorial+hospital+mumbai+maharashtra/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3be7cee53670c759:0x3509dc5c13cbc2e0!2m2!1d72.8415408!2d19.0025221');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Saifee Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 15/17, Maharshi Karve Rd, Charni Road East, Girgaon, Mumbai, Maharashtra 400004",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:+917506514832');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//saifee+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7ce1a9b19f6e5:0xc8b9c2b8a00a89ae?sa=X&ved=2ahUKEwjZ-rGDgbfxAhXn8HMBHfzNAncQ9RcwHHoECEwQBQ');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Lilavati Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: A-791, Bandra Reclamation Rd, General Arunkumar Vaidya Nagar, Bandra West, Mumbai, Maharashtra 400050",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:+91 9769250010');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//lilavati+hospital+mumbai/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3be7c938c9dfd491:0x88790013d219e1cc?sa=X&ved=2ahUKEwjdvN6agbfxAhVT4XMBHSUDBcsQ9RcwKHoECF0QBA');
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
            ),
          ],
        ),
      ),
    );
  }
}

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
      body: SafeArea(
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
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pune',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Expanded(
              child: SingleChildScrollView(
                //---> scroll view, padding
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 15.0),
                          Card(
                            elevation: 6,
                            shadowColor: Colors.green,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.green, Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Government",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Poona Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 27, Sadashiv Peth, Neighbor of Alka Talkies, Pune, Maharashtra 411030",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                   Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:(020) 24331706');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//poona+hospital/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x3bc2c075f909f913:0x54d12ea7498c2ebe!2m2!1d73.8420697!2d18.5108143');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("Jehangir Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 32, Sasoon Road Opposite Railway Station, Central Excise Colony, Sangamvadi, Pune, Maharashtra 411001",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                    Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:+912066819999');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//jehangir+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c05816d29283:0xfe98c3452724e113?sa=X&ved=2ahUKEwjagrLg_7bxAhVnH7cAHasjDfoQ9RcwJXoECGEQBQ');
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
                            elevation: 6,
                            shadowColor: Colors.red,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.red.shade900],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Private",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  Text("KEM Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 489, Rasta Peth, Sardar Moodliar Road, Pune, 411011.",
                                    style: TextStyle(fontSize: 18),
                                  ),

                                     Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall(
                                              'tel:+91 20 2621 7300');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text(
                                        'Open In Google Maps',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//kem+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bc2c067a2fd93e1:0x1d019a52420f9b1b?sa=X&ved=2ahUKEwiGro37_7bxAhX07XMBHR5bBQEQ9RcwJnoECFMQBQ');
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
            ),
          ],
        ),
      ),
    );
  }
}
