import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class About extends StatefulWidget {
  final String title = 'Launch Url';
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Future<void> _launched;
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
      backgroundColor: Color(0xff08D9D6),
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
                      icon: FaIcon(
                          FontAwesomeIcons.angleLeft),
                            color: Color(0xff252A34),
                      ),
                  
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Color(0xff252A34)),
                ),
              ],
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Color(0xff252A34),
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
                            // elevation: 6,
                            // shadowColor: Colors.green,
                            // clipBehavior: Clip.antiAlias,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(25),
                            // ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            elevation: 4,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffEAEAEA)),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sprint Developers",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "We were assigned a project in a group by our college, but we decided to take it a notch higher. So, we started Sprint Developers and this is our first app. It took a lot of hardwork and sleepless nights, we hope you like it!\n",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Card(
                            // elevation: 6,
                            // shadowColor: Colors.green,
                            // clipBehavior: Clip.antiAlias,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(25),
                            // ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            elevation: 4,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffEAEAEA)),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Contributors",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "S - Subhash Rajpurohit \nP - Prakhar Rai\nR - Rugved Rajandekar\nI  - Ishan Rakte\nN - Nishad Ranade\nT - Tushar Raikar",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),  SizedBox(height: 15.0),
                          Card(
                            // elevation: 6,
                            // shadowColor: Colors.green,
                            // clipBehavior: Clip.antiAlias,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(25),
                            // ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            elevation: 4,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffEAEAEA)),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            _launched = _launchUniversalLinkIos(
                                                'https://github.com/sprintdevelopers/privacy-policy/blob/main/privacy-policy.md');
                                          });
                                        },
                                        child: Text(
                                            'https://github.com/sprintdevelopers/privacy-policy/blob/main/privacy-policy.md')),
                                  )
                                ],
                              ),
                            ),
                          ),  SizedBox(height: 15.0),
                          Card(
                            // elevation: 6,
                            // shadowColor: Colors.green,
                            // clipBehavior: Clip.antiAlias,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(25),
                            // ),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            elevation: 4,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Color(0xffEAEAEA)),
                              width: 370,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Source for Data",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "World Stats -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://disease.sh/');
                                        });
                                      },
                                      child: Text('https://disease.sh/')),
                                  Text(
                                    "Countrywise Stats -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://disease.sh/');
                                        });
                                      },
                                      child: Text('https://disease.sh/')),
                                  Text(
                                    "India Statewise Stats -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.mohfw.gov.in/');
                                        });
                                      },
                                      child: Text('https://www.mohfw.gov.in/')),

                                      Text(
                                    "Vaccine Tracker Stats -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://disease.sh/');
                                        });
                                      },
                                      child: Text('https://disease.sh/')),
                                      
                                  Text(
                                    "Precautions And Symptoms -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/question-and-answers-hub/q-a-detail/coronavirus-disease-covid-19');
                                        });
                                      },
                                      child: Text(
                                          'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/question-and-answers-hub/q-a-detail/coronavirus-disease-covid-19')),
                                  Text(
                                    "Covid Vaccine Info -",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _launched = _launchUniversalLinkIos(
                                              'https://www.mohfw.gov.in/covid_vaccination/vaccination/index.html');
                                        });
                                      },
                                      child: Text(
                                          'https://www.mohfw.gov.in/covid_vaccination/vaccination/index.html')),
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
