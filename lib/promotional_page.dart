import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/coupon_page.dart';
import 'package:star_cafe/drawer_page.dart';

class PromotionalPage extends StatefulWidget {
  const PromotionalPage({Key? key}) : super(key: key);

  @override
  _PromotionalPageState createState() => _PromotionalPageState();
}

class _PromotionalPageState extends State<PromotionalPage> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Container(
          // color: Colors.red,
          child: Center(
            child: Text(
              "Promotions",
              style: GoogleFonts.sourceSerifPro(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CouponPage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "Enter code",
                  style: GoogleFonts.sourceSerifPro(
                      fontSize: 14, color: Color(0xff009F0B)),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10),
            child: Container(
              child: Text(
                "Available promotions",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 4),
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Limit on one per order",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    "For your first order",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.30)),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 4),
                    child: Text(
                      "25% off (up to US \$7)",
                      style: GoogleFonts.sourceSerifPro(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    "Use By",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE6E6E6)),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isSelected ? Colors.green : Color(0xffE6E6E6),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Selected",
                          style: GoogleFonts.sourceSerifPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? Color(0xffE6E6E6)
                                  : Color(0xff000000)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffE6E6E6),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Details",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(vertical: 7.5, horizontal: 16),
            height: 164,
            width: 386,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Colors.green : Color(0xffE6E6E6),
                )),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    "For your first order",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.30)),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 16.0, top: 4),
                    child: Text(
                      "25% off (up to US \$7)",
                      style: GoogleFonts.sourceSerifPro(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    "Use By",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffE6E6E6)),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: isSelected ? Color(0xffE6E6E6) : Colors.green,
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          "Selected",
                          style: GoogleFonts.sourceSerifPro(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: isSelected
                                  ? Color(0xff000000)
                                  : Color(0xffE6E6E6)),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffE6E6E6),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Details",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(vertical: 7.5, horizontal: 15),
            height: 164,
            width: 386,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Color(0xffE6E6E6) : Colors.green,
                )),
          )
        ],
      ),
    );
  }
}
