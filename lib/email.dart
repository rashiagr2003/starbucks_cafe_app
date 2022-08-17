import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/account_password.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/Mask.png",
                ),
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 24,
                  child: Text(
                    "What' your email address",
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
                                decoration: InputDecoration(
                                    hintText: " youremailaddress.com",
                                    border: InputBorder.none)),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AccountPasswordScreen()));
                        },
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffFF0A38),
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
          ],
        ),
      ),
    );
  }
}
