import 'package:flutter/material.dart';
class VaccineInfo extends StatefulWidget {
  @override
  _VaccineInfoState createState() => _VaccineInfoState();
}

class _VaccineInfoState extends State<VaccineInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(title: Text('Vaccine')),
      body: Center(
        child: Text('Vaccine'),
      ),
    );
  }
}