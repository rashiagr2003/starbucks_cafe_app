import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Group.png"))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "STARBUCKS",
                    style: TextStyle(
                        fontSize: 25.52,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal.shade900),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Welcome back!",
                        style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
                    style: GoogleFonts.inter(color: Color(0xff4D5661)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  padding: EdgeInsets.only(top: 5, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    suffixIcon: Icon(FontAwesomeIcons.eye),
                  )),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 190),
                      width: 156,
                      child: Text("Forgot your password?",
                          style: TextStyle(
                              color: Color(0xff4D5661),
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: 328,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xff4AA366),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
