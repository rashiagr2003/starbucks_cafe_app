import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/colors.dart';

class CouponPage extends StatefulWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/FoodlLy Pass.png"),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "\$9.99/mo",
                  style: GoogleFonts.sourceSerifPro(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: Color(0xffFF0A38)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: Text(
                  "1 month free: Unlimited free ",
                  style: GoogleFonts.sourceSerifPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color(0xff000000)),
                ),
              ),
              Text(
                " delivery +5% off",
                style: GoogleFonts.sourceSerifPro(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color(0xff000000)),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          elevation: 10,
                          context: context,
                          builder: (context) => Container(
                              width: 300,
                              height: 400,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 42.5,
                                    backgroundColor: const Color(0xffFF0A38)
                                        .withOpacity(0.10),
                                    backgroundImage: const AssetImage(
                                        "assets/Clipboard - 2020-09-16 12.31.46.png"),
                                    child: const Image(
                                        image: AssetImage("assets/pass.png")),
                                  ),
                                  Container(
                                    child: Text(
                                      "Pass (1 Month Free)",
                                      style: GoogleFonts.sourceSerifPro(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: AppColor.backgroundColor),
                                    ),
                                  ),
                                  Container(
                                    width: 200,
                                    height: 34,
                                    child: Center(
                                      child: Text(
                                        "Billing Starts July 23,2020 for \$9.99/month. you can cancel anytime ",
                                        style: GoogleFonts.sourceSerifPro(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "No Payments method is available ",
                                        style: GoogleFonts.sourceSerifPro(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 215,
                                    height: 57,
                                    child: Center(
                                      child: Text(
                                        "Update Payment method",
                                        style: GoogleFonts.sourceSerifPro(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            color: Color(0xff009F0B)),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xff009F0B)
                                            .withOpacity(0.10)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    height: 60,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Center(
                                      child: Text(
                                        "Start Free Trial",
                                        style: GoogleFonts.sourceSerifPro(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )));
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          " Try It Free",
                          style: GoogleFonts.sourceSerifPro(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
