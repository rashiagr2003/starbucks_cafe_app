import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/food.dart';

class AccountPasswordScreen extends StatefulWidget {
  const AccountPasswordScreen({Key? key}) : super(key: key);

  @override
  _AccountPasswordScreenState createState() => _AccountPasswordScreenState();
}

class _AccountPasswordScreenState extends State<AccountPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 24,
                  child: Text(
                    "Create your account password",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 250,
                          child: Center(
                            child: TextField(
                                maxLength: 8,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Minimum 8 characters",
                                    border: InputBorder.none)),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoodScreen()));
                        },
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffff0a38),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 61,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.90,
                )
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/Group 268.png"),
            )),
          ),
        ],
      ),
    );
  }
}
