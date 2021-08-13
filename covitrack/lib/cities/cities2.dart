import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Chennai extends StatefulWidget {
  const Chennai({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _ChennaiState createState() => _ChennaiState();
}

class _ChennaiState extends State<Chennai> {
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
            SizedBox(height: 5,),
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }, 
                                  icon: Icon(Icons.arrow_back_ios_new,),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Chennai',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black
                              ),
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
              child: SingleChildScrollView(                    //---> scroll view
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
                                gradient: LinearGradient(colors: [ Colors.green,Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,)
                              ),
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("Tamil Nadu Government Multi Super Speciality Hospital",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Government Medical College Omandurar Government Estate, Anna Salai, Opposite to, Anna Salai, Triplicane, Chennai, Tamil Nadu 600002",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                 Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:044 25666000');
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
                                              'https://www.google.com/maps/dir//government+hospital+chennai/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a52661cdfe287e3:0x91c026621c68ec07?sa=X&ved=2ahUKEwjDtNCs25zyAhUzmuYKHRHfDwgQ9RcwAHoECA8QBQ');
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
                                  colors: [ Colors.redAccent,Colors.red.shade900],
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("Noble Hospital",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: M.Ct.M. School Basket Ball Court, No.4(44, Audiappa St, near Lauders Gate, Opposite. Lady, Purasaiwakkam, Chennai, Tamil Nadu 600084",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                            Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:044 4004 2222');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//noble+hospital+chennai/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a5265dff238aa47:0xcd5ea2a1d1ec7b4f?sa=X&ved=2ahUKEwilwOmK2pzyAhVnwTgGHQkHByMQ9RcwHHoECFcQBQ');
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
                                  colors: [ Colors.redAccent,Colors.red.shade900],
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("Dr. Mehta's Hospitals",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 2, Mc Nichols Rd, Chetpet, Chennai, Tamil Nadu 600031",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                    Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched =
                                              _makePhoneCall('tel:044 4227 1001');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              "https://www.google.com/maps/dir//Dr.+Mehta's+Hospitals,+2,+Mc+Nichols+Rd,+Chetpet,+Chennai,+Tamil+Nadu+600031/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a5265e51a427cad:0x3c7ce71e604b9f23?sa=X&ved=2ahUKEwjchtn52pzyAhVnppUCHSE9DSQQ48ADMAN6BAgBEEE");
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


class Hyderabad extends StatefulWidget {
  const Hyderabad({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _HyderabadState createState() => _HyderabadState();
}

class _HyderabadState extends State<Hyderabad> {
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
            SizedBox(height: 5,),
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }, 
                                  icon: Icon(Icons.arrow_back_ios_new,),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Hyderabad',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black
                              ),
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
              child: SingleChildScrollView(                    //---> scroll view
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
                                gradient: LinearGradient(colors: [ Colors.green,Colors.green.shade800],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,)
                              ),
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("Govt Nizamia General Hospital",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 23-1-1, Bibi Bazar Rd, Opposite Mecca Masjid, Kotla Alijah, Moghalpura, Hyderabad, Telangana 500002",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                                    Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:040 2456 8000');
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
                                              'https://www.google.com/maps/dir//government+hospital+hyderabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bcb98209722fc6d:0x13af3a537231dbce?sa=X&ved=2ahUKEwiwovTd-p3yAhUAqksFHUKdB64Q9RcwAHoECAsQAw');
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
                                  colors: [ Colors.redAccent,Colors.red.shade900],
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("OZONE HOSPITALS",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Kothapet, Green Hill Colony Rd Number 4, Dilsukhnagar, Hyderabad, Telangana 500035",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                              Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white
                                          )),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:095333 88108');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//ozone+hospital+hyderabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bcb98bfb707e6bf:0xe800326257c20c37?sa=X&ved=2ahUKEwivuMW8-Z3yAhVUT30KHTfwBaIQ9RcwHHoECFYQBQ');
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
                                  colors: [ Colors.redAccent,Colors.red.shade900],
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
                                        fontWeight: FontWeight.bold,letterSpacing: 1.5),
                                  ),
                                  Text("Citizens Speciality Hospital",
                                      style: TextStyle(
                                          fontSize: 22, fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 1-100/1/CCH aparna cyber life road, Nalagandla, Telangana 500019",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                                   Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched =
                                              _makePhoneCall('tel:040 6719 1919');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              "https://www.google.com/maps/dir//citizens+hospital+hyderabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bcb92dc1b8176eb:0x37251fdef4c746cc?sa=X&ved=2ahUKEwjNueCA-p3yAhWRXCsKHXFkBIEQ9RcwJXoECGcQBQ");
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

class Amritsar extends StatefulWidget {
  const Amritsar({Key key}) : super(key: key);
  final String title = 'Launch Url';

  @override
  _AmritsarState createState() => _AmritsarState();
}

class _AmritsarState extends State<Amritsar> {
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
                  'Amritsar',
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
                                  Text("Amritsar Sewa Samiti",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: 76, Hari Bhawan, Kennedy Avenue, Amritsar, Punjab 143001",
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
                                              'tel:0183 256 4437');
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
                                              'https://www.google.com/maps/dir//government+hospital+in+amritsar/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x391964a501353599:0x67cf9669b5833082?sa=X&ved=2ahUKEwiN0_fE_Z3yAhVs4nMBHbdRA0sQ9RcwAHoECAoQBA');
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
                                  Text("Fortis Escorts Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Majitha-Verka Bypass Road, Amritsar - 143004, Amritsar, Punjab 143004",
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
                                              'tel:0183 503 2222');
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
                                              'https://www.google.com/maps/dir//hospital+amritsar/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x39196368fac3a7d9:0x3c1072af880d7974?sa=X&ved=2ahUKEwi63YOZ_J3yAhVC7HMBHdXFB6IQ9RcwAHoECAwQBA');
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
                                  Text("Akashdeep Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Majitha Rd, Opposite M.B Poly Technical College, Moon Avenue, Diamond Avenue, Amritsar, Punjab 143001",
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
                                              'tel:085910 18820');
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
                                              'https://www.google.com/maps/dir//covid+19+hospital+in+amritsar/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3919637472f222df:0xa7a8117db29df724?sa=X&ved=2ahUKEwiC5ev1_J3yAhXhILcAHUAnCu4Q9RcwAHoECAwQBA');
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

class Ahmedabad extends StatefulWidget {
  Ahmedabad({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _AhmedabadState createState() => _AhmedabadState();
}

class _AhmedabadState extends State<Ahmedabad> {
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
                  'Ahmedabad',
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
                                  Text("SMS Multi-Speciality Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Near Tapovan Circle, Visat - Gandhinagar Hwy, Chandkheda, Ahmedabad, Gujarat 382424",
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
                                              _makePhoneCall('tel:075739 49408');
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
                                              'https://www.google.com/maps/dir//sms+hospital+ahmedabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x395e822c405e541d:0xfac028c17a010744?sa=X&hl=en&ved=2ahUKEwiL9cTg_53yAhVawTgGHQCoD5QQ9RcwHHoECEwQBA');
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
                                  Text("Sterling Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Sterling Hospital Road near Maharaja Agrasen Vidhyalaya, Memnagar, Ahmedabad, Gujarat 380052",
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
                                              _makePhoneCall('tel:079 4001 1111');
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
                                              'https://www.google.com/maps/dir//hospitals+in+ahmedabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x395e84afbc804959:0x1bd6f237ba587f77?sa=X&hl=en&ved=2ahUKEwjp4sDU_p3yAhW4xzgGHUnNB7sQ9RcwAHoECBEQBA');
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
                                  Text("Shalby Multi-Specialty Hospitals",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Sarkhej - Gandhinagar Hwy, opposite of Karnavati Club, Ramdev Nagar, Ahmedabad, Gujarat 380015",
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
                                              'tel:079 4020 3000');
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
                                              'https://www.google.com/maps/dir//hospitals+in+ahmedabad/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x395e9b25101211f5:0x2f374a23db429344?sa=X&hl=en&ved=2ahUKEwji1qex_53yAhVdyzgGHUQNABEQ9RcwAHoECA8QBA');
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
class Goa extends StatefulWidget {
  Goa({Key key}) : super(key: key);
  final String title = 'Launch Url';
  @override
  _GoaState createState() => _GoaState();
}

class _GoaState extends State<Goa> {
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
                  'Goa',
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
                                  Text("Goa Medical College & Hospital, Bambolim",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: N17, Bambolim, Goa 403202",
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
                                              _makePhoneCall('tel:0832 245 8727');
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
                                              'https://www.google.com/maps/dir//Goa+Medical+College+%26+Hospital,+Bambolim/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bbfbf57b548f663:0x50785c06ee0da5fc?sa=X&ved=2ahUKEwjJuIC0hp7yAhU8_XMBHb5WB6EQ9RcwHHoECEIQBA');
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
                                  Text("Manipal Hospitals",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Panaji, Dr E Borges Rd, Dona Paula, Goa 403004",
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
                                              _makePhoneCall('tel:1800 102 5555');
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
                                              'https://www.google.com/maps/dir//hospital+in+goa/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bbfc0cb6f59b763:0x5fef15ef316a7759?sa=X&ved=2ahUKEwjfo7LdhJ7yAhXkILcAHYYFCm0Q9RcwAHoECBMQBA');
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
                                  Text("Victor Hospital",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(height: 5),
                                  Text(
                                    "Address: Old Station Rd, near Carmelite Monastery, Malbhat, Margao, Goa 403601",
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
                                              'tel:0832 672 8888');
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
                                              'https://www.google.com/maps/dir//hospital+in+goa/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bbfb3c6c5c4520d:0xa4045e195fdd67b3?sa=X&ved=2ahUKEwjix8e5hZ7yAhX-ILcAHZe-Do8Q9RcwAHoECA4QBQ');
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
