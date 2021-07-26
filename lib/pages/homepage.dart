import 'package:flutter/material.dart';
import 'package:flutterapp/style/font-style.dart';
import 'package:flutterapp/style/custom_colors.dart';

class FirstHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("F L U T T E R"),
        backgroundColor: color1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print("Search Button");
            },
          ),
          IconButton(
              icon: Icon(
                Icons.tune,
                semanticLabel: 'filter',
              ),
              onPressed: () {
                print('Filter Button');
              })
        ],
      ),
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
