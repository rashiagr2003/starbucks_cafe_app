import 'dart:async';

import 'package:flutter/material.dart';
import 'package:star_cafe/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("App opened");
    Timer(Duration(seconds: 3), () {
      print("navigated!!");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StartScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFBA0A).withOpacity(0.75),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 83,
                width: 189,
                child: Image.asset("assets/Logo.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
