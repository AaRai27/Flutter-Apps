import 'package:flutter/material.dart';
import 'package:flutterapp/style/custom_colors.dart';
import 'package:flutterapp/pages/homepage.dart';
import 'package:flutterapp/pages/login.dart';
import 'style/font-style.dart';

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
        // appBar: ,
        body: SafeArea(
          child: LoginPage(),
        ),
      ),
    );
  }
}
