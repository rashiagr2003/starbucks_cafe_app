import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/email.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
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
            FontAwesomeIcons.times,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      "Enter your mobile number",
                      style: GoogleFonts.sourceSerifPro(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/4.png"),
              )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 50,
                  ),
                  Container(
                    height: 50,
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Text(
                      "+91",
                      style: GoogleFonts.sourceSerifPro(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                      width: 150,
                      child: Center(
                        child: TextField(
                            // obscureText: true,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: " 9935 012 352",
                                border: InputBorder.none)),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmailScreen()));
                    },
                    child: Container(
                      width: 56,
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
      ),
    );
  }
}
