import 'package:flutter/material.dart';
import 'package:flutterapp/custom_colors.dart';
import 'package:flutterapp/first_home_page.dart';
import 'package:flutterapp/tutor1/login.dart';
import 'font-style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter Apps"),
          backgroundColor: color1,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.mail), onPressed: () {})
          ],
        ),
        body: SafeArea(
          child: LoginPage(),
        ),
      ),
    );
  }
}
