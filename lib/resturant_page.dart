import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/product_page.dart';
import 'package:star_cafe/promotional_page.dart';

class ResturantPage extends StatefulWidget {
  const ResturantPage({Key? key}) : super(key: key);

  @override
  _ResturantPageState createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  // bool isRestaurent = false;
  // bool isImageNew = true;
  String title = "Carl's Jr. (1001 Veterans Blvd)";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductPage()));
          },
          backgroundColor: Color(0xffFF0052).withOpacity(0.80),
          label: Text("Products >"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.46,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/burger.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 8, bottom: 4),
                              child: Text(
                                "Carl's Jr. (1001 Veterans Blvd)",
                                style: GoogleFonts.sourceSerifPro(fontSize: 22),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                "Burger. Pizza",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                "3.4 mi 5-15 MINS - Pickup ",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Container(
                                  child: Text("4.7 (104)"),
                                )
                              ],
                            ),
                            Divider(
                              color: Color(0xff000000).withOpacity(0.10),
                              indent: 10,
                              thickness: 1,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                "Restaurant Info",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                "1001 Veternas Blvd, Redwood City, CA, 94063",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 13,
                                      backgroundColor: Color(0xff009F0B),
                                      child: Icon(
                                        FontAwesomeIcons.solidCommentDots,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(8),
                                      child: Text(
                                        "hotel info",
                                        style: GoogleFonts.sourceSerifPro(
                                            fontSize: 14,
                                            color: Color(0xff000000)
                                                .withOpacity(0.4)),
                                      ),
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black,
                                    child: Icon(
                                      Icons.search,
                                      size: 25,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 40,

                              // margin: EdgeInsets.all(4),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                // padding: EdgeInsets.all(4),
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Fast and reliable(21)",
                                      style: GoogleFonts.sourceSerifPro(
                                          color: Color(0xff009F0B),
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Well Packed(21)",
                                      style: GoogleFonts.sourceSerifPro(
                                          color: Color(0xff009F0B),
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Fast and reliable(21)",
                                      style: GoogleFonts.sourceSerifPro(
                                          color: Color(0xff009F0B),
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  ),

                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.red,
                                  //       borderRadius: BorderRadius.circular(25)),
                                  //   height: 36,
                                  //   margin: EdgeInsets.all(4),
                                  // ),
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.red,
                                  //       borderRadius: BorderRadius.circular(25)),
                                  //   height: 36,
                                  //   margin: EdgeInsets.all(4),
                                  // ),
                                ],
                              ),
                            ),
                            Divider(
                                color: Color(0xff000000).withOpacity(0.10),
                                indent: 10,
                                thickness: 1),
                            // Container(
                            //   padding: EdgeInsets.symmetric(vertical: 4),
                            //   child: Text(
                            //     "Products",
                            //     style: GoogleFonts.sourceSerifPro(
                            //         fontSize: 19,
                            //         fontWeight: FontWeight.w700,
                            //         color: Colors.black),
                            //   ),
                            // ),
                            // Card(
                            //   child: Column(
                            //     children: [
                            //       Container(
                            //           height: 200,
                            //           width:
                            //               MediaQuery.of(context).size.width *
                            //                   0.40,
                            //           decoration: BoxDecoration(
                            //               color: Colors.blueAccent,
                            //               borderRadius:
                            //                   BorderRadius.circular(15)))
                            //     ],
                            //   ),
                            // ),
                          ]),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
