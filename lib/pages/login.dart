import 'dart:ui';
import 'package:flutterapp/pages/catalog.dart';
import 'package:flutterapp/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/style/custom_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: [
          SizedBox(
            height: 70.0,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/gunung.png',
                width: 80,
                height: 80,
              ),
              Text(
                'FLUTTER',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(height: 50.0),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
                filled: true, labelText: 'Username', border: InputBorder.none),
          ),
          SizedBox(
            height: 12.0,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                filled: true, labelText: 'Password', border: InputBorder.none),
            obscureText: true,
          ),
          ButtonBar(
            children: [
              TextButton(
                child: Text('CANCEL'),
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
              ),
              ElevatedButton(
                child: Text('NEXT'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Catalog()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
