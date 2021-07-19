import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'greetscreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

enum SingingCharacter { Yes, No }

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController textFieldController = TextEditingController();
  String dropdownValue = '2020';
  bool _validate = false;
  bool _switch = false;
  SingingCharacter? _character = SingingCharacter.Yes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 35.0),
        Container(
            width: 350,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 35),
            color: Color(0xff2FC4B2),
            child: (FittedBox(
                child: Text('CRUX FLUTTER SUMMER GROUP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ))))),
        SizedBox(height: 10.0),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              'ID Number',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
          child: TextField(
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
          child: TextField(
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
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: Text(
              'Batch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(10.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 24,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['2020', '2019', '2018', '2017']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Row(children: [
                        Text(value),
                        SizedBox(
                          width: 240,
                        )
                      ]));
                }).toList(),
              ),
            )),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: SwitchListTile(
              title: Text(
                'Recieve Regular Updates',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
              ),
              value: _switch,
              activeColor: Color(0xff2FC4B2),
              inactiveTrackColor: Colors.grey,
              onChanged: (bool value) {
                setState(() {
                  _switch = value;
                });
              },
            )),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 40, bottom: 10),
            child: Text(
              'Are you excited for this!!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: const Text(
                  'Yes',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.Yes,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text(
                  'No',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.No,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Container(
            child: ElevatedButton(
          onPressed: () {
            _goToGreetScreen(context);
          },
          child: Text('REGISTER'),
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
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginscreen()));
                },
                child: Text('Login',
                    style: TextStyle(fontSize: 16, color: Color(0xff2FC4B2))))
          ],
        )
      ],
    ))));
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
