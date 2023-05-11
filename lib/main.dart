import 'package:flutter/material.dart';
import 'package:telfili/views/homepage.dart';
import 'package:telfili/views/login.dart';
import 'package:telfili/views/profile.dart';
import 'package:telfili/views/tabview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabView(),
    );
  }
}

