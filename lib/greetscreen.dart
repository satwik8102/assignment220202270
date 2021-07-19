import 'dart:ui';

import 'package:flutter/material.dart';

class GreetScreen extends StatefulWidget {
  final String text;
  GreetScreen(this.text, {Key? key}) : super(key: key);
  @override
  _GreetScreenState createState() => _GreetScreenState();
}

class _GreetScreenState extends State<GreetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 100.0),
      Center(
          child: Text(
        'CRUX FLUTTER ',
        style: TextStyle(
            color: Color(0xff2FC4B2),
            fontSize: 35.0,
            fontWeight: FontWeight.w900),
      )),
      Text(
        'SUMMER GROUP ',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xff2FC4B2),
            fontSize: 35.0,
            fontWeight: FontWeight.w900),
      ),
      SizedBox(
        height: 100.0,
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            'welcomes you',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )),
      SizedBox(height: 30),
      Text(widget.text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      SizedBox(height: 50),
      Text('Have a great journey ahead !!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    ])));
  }
}
