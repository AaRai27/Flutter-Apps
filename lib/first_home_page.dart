import 'package:flutter/material.dart';
import 'package:flutterapp/font-style.dart';

class FirstHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
        padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/gunung.png'),
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 4),
                  child: Text(
                    "My First Super App",
                    style: mainHeader,
                  ),
                ),
                Text(
                  "Ini adalah gambar Background Animasi\n sebagai hiasan di App Ini",
                  style: subHeader,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('BACK'),
                ),
              ],
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
