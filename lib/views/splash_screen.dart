import 'package:flutter/material.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/text logo.png", width: 150, height: 70,),
            Image.asset("assets/images/baby logo.png", width: 335, height: 350,),
          ],
        ),
      ),
    );
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.push(context, slideLeft(const Login()));
  }

  @override
  void initState() {
    super.initState();
    init();
  }

}

