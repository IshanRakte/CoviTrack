import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
    }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Kolkata', style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      
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
                            'Kolkata',
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
              child: SingleChildScrollView(                    //---> scroll view and padding added
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
                                  Text("Government",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,letterSpacing: 1.5  ),),
                                  Text("M R Bangur Hospital", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                                  SizedBox(height:5),
                                  Text(
                                    "Address: 241, Deshpran Sasmal Road, Netajinagar, Rajendra Prasad Colony, Tollygunge, Kolkata, 700033",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                  child: TextButton(
                                      child: const Text('Open In Google Maps', style: TextStyle(color: Colors.white), ),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//mr+bangur+hospital/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0270c6c4eb0edd:0xab86f4a289f70fd8?sa=X&ved=2ahUKEwjwuYPCgbfxAhUXb30KHTfVDicQ9RcwFXoECDoQBQ');
                                        });
                                      },
                                    ),
                                    
                                  ),
                                  Container(
                                    height: 30,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched =
                                              _makePhoneCall('tel:088207 02070');
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
                                  Text("Private",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold ,letterSpacing: 1.5 ),),
                                  Text("Columbia Asia Hospital Salt Lake",
                                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                                      SizedBox(height:5),
                                  Text(
                                    "Address: IB-193, IB Block, Sector III, Bidhannagar, Kolkata, West Bengal 700091",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//columbia+asia+kolkata/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0275c1513d0b19:0xeaf5597a0cee8cb?sa=X&ved=2ahUKEwjimofegrfxAhX2lEsFHVe2AM0Q9RcwHnoECEwQBA');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:033 6600 3300');
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
                                  Text("Private",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold ,letterSpacing: 1.5 ),),
                                  Text("Peerless Hospital",
                                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold )),
                                      SizedBox(height:5),
                                  Text(
                                    "Address: 360, Pancha Sayar Rd, Sahid Smirity Colony, Pancha Sayar, Kolkata, West Bengal 700094",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Container(
                                    height: 40,
                                    child: TextButton(
                                      child: const Text('Open In Google Maps',style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.google.com/maps/dir//peerless+hospital+kolkata/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3a0271652e763a03:0x93ab7f119f9d152b?sa=X&ved=2ahUKEwjc3K-lg7fxAhUGWX0KHVRNBfYQ9RcwHXoECEkQBA');
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    child: TextButton(
                                      child: const Text('Call',
                                          style: TextStyle(fontSize: 15,color: Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _launched = _makePhoneCall('tel:033 4011 1222');
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