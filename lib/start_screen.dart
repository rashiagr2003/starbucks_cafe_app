import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/create_account_screen.dart';

import 'package:star_cafe/number_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/BImage.png")),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: Container(
              height: 94,
              width: 245,
              child: Text(
                "Get started with Foodly",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 39, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          SizedBox(
            height: 250,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffFF0A38),
            ),
            height: 60,
            width: MediaQuery.of(context).size.width * 0.90,
            child: GestureDetector(
              onTap: () {
                // FirebaseFirestore.instance.collection("Properties").add({
                //   "property_image":
                //       "https://cf.bstatic.com/xdata/images/hotel/max1024x768/314832821.jpg?k=6e41b04c6bd58330f2b14e1f74912b3336f0a4511d6e56ba4a94e87541edd1aa&o=&hp=1",
                //   "property_price": "80,00000 Rs",
                //   "property_address": "Nipania Main Road, 452016 Indore, India "
                // });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: Center(
                      child: Text(
                        "Get started",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: Text(
                      ">",
                      style: GoogleFonts.sourceSerifPro(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
