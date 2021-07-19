import 'package:flutter/material.dart';
import 'registerscreen.dart';
import 'greetscreen.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 75.0),
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
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'ID Number',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            child: TextFormField(
              controller: textFieldController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25.0),
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Please enter your BITS ID Number',
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25.0),
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Please enter your Password',
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 30.0),
          Container(
              child: ElevatedButton(
            onPressed: () {
              _goToGreetScreen(context);
            },
            child: Text('LOG IN'),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: Color(0xff2FC4B2),
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                )),
          )),
          SizedBox(height: 20.0),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(color: Color(0xff2FC4B2), fontSize: 18.0),
                )),
          ),
          SizedBox(height: 75.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Text('Register',
                      style: TextStyle(fontSize: 18, color: Color(0xff2FC4B2))))
            ],
          )
        ],
      ),
    ));
  }

  void _goToGreetScreen(BuildContext context) {
    String iDNum = textFieldController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GreetScreen(iDNum),
        ));
  }
}
