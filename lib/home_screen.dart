// ignore_for_file: sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:star_cafe/product_page.dart';
import 'package:star_cafe/profille_screen.dart';
import 'package:star_cafe/resturant_page.dart';
import 'package:star_cafe/sell_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Food Plaza",
          style: GoogleFonts.inter(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xff1D4D4F)),
        ),
        actions: [
          Icon(FontAwesomeIcons.bell, color: Color(0xff1D4D4F)),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 8),
            child: Icon(FontAwesomeIcons.ellipsisV, color: Color(0xff1D4D4F)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 10,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 172,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage("assets/g4387.png"),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 16.28, bottom: 10),
                              child: Text("Rashi Agrawal",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16.28, bottom: 30),
                              child: Text(
                                "3,500 Rs",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductPage()));

                              // FirebaseFirestore.instance
                              //     .collection("Cart")
                              //     .add({
                              //   "cart_image":
                              //       "https://ik.imagekit.io/dunzo/VW5XVlBlSzFwOFllSVhWRTVEVlZVQT09-product_image.jpg?tr=w-436,h-436,cm-pad_resize",
                              //   "cart_name": "American Nuts",
                              //   "cart_quantity": 2,
                              //   "cart_rate": 250
                              // });
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 16.28, bottom: 40),
                                  child: Text(
                                    "Shop now ->",
                                    style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SellPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(),
                              padding: EdgeInsets.only(left: 16.28, bottom: 40),
                              child: Text(
                                "Sell now ->",
                                style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // margin: EdgeInsets.symmetric(horizontal: 10.35, vertical: 25.52),
                  height: 172,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4AA366)),
                  // width: MediaQuery.of(context).size.width * 0.75,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                offerBox(
                  Color(0xffFEF3D3),
                  "Your first two orders",
                  "Enjoy 25% Off (upto US 7)",
                ),
                offerBox(Color(0xffFFD4DB), "Your first three orders",
                    "Enjoy 35% Off (upto US 12)")
              ],
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("Restaurants")
                  .snapshots(),
              builder: (context, snapshot) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data!.docs[index];

                    return resturantCard(
                        ds["restaurant_name"],
                        " American . Fingerchips . Fast Food",
                        ds["restaurant_img"],
                        ds["restaurant_time"],
                        ds["delivery_charge"],
                        ds["rating"],
                        ds["rating_count"],
                        context);
                  },
                );
              },
            ),
            // resturantCard("Ambience", " American . Fingerchips . Fast Food",
            //     "assets/burger.png", context),
            // resturantCard(
            //     "Tandoor Cafe",
            //     " American . Cheeseburger . Fast Food",
            //     "assets/cheeseburger.png",
            //     context),
            // resturantCard(
            //     "Ahmed Resturant",
            //     " American . Special chicken . Fast Food",
            //     "assets/chicken.png",
            //     context)
          ],
        ),
      ),
    );
  }

  Widget offerBox(
    Color bgColor,
    String subTitle,
    String title,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3, vertical: 8),
      height: 270,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset("assets/icecream.png"),
            height: 100,
            width: 60,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              subTitle,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 40,
            width: 121,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        elevation: 10,
                        context: context,
                        builder: (context) => Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 197,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFEF0C8),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      margin: EdgeInsets.all(8),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/Rectangle.png")),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      child: Container(
                                        child: Text(
                                          "Your first 2 orders",
                                          style: GoogleFonts.sourceSerifPro(
                                              color: Color(0xff05B011),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        "Enjoy 25% off ( up to us \$7",
                                        style: GoogleFonts.sourceSerifPro(
                                            color: Color(0xff000000),
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(bottom: 25, top: 4),
                                      width: 244,
                                      child: Text(
                                        "Welcome to uber Eats! Here's a little something for you first order",
                                        style: GoogleFonts.sourceSerifPro(
                                            color: Color(0xff000000),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                        width: 293,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFF0A38),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height: 60,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80),
                                              child: Text(
                                                "Happy Foodly",
                                                style:
                                                    GoogleFonts.sourceSerifPro(
                                                        color:
                                                            Color(0xffFFFFFF),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: Icon(
                                                Ionicons.checkmark,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            )
                                          ],
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 150, top: 15, bottom: 15),
                                      width: 244,
                                      child: Text(
                                        "See Details",
                                        style: GoogleFonts.sourceSerifPro(
                                            color: Color(0xff000000),
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: Container(
                    child: Text(
                      "See Details",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 12,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget resturantCard(
    String resturantName,
    String tagLine,
    String imageAddress,
    String time,
    int delivery_charge,
    double rating,
    int ratingCount,
    BuildContext context) {
  return GestureDetector(
    child: Card(
      elevation: 4,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 134,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Image.network(imageAddress, fit: BoxFit.cover),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  resturantName,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
              ),
              Container(
                child: Text(
                  tagLine,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black26,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff707070).withOpacity(0.4))),
                      child: Text(
                        time,
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff707070).withOpacity(0.4))),
                      child: Text(
                        rating.toString() + " (" + ratingCount.toString() + ")",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff707070).withOpacity(0.4))),
                      child: Text(
                        delivery_charge.toString() + "Rs Delivery",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
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
                      "People say : well packed",
                      style: GoogleFonts.sourceSerifPro(
                          fontSize: 14,
                          color: Color(0xff000000).withOpacity(0.4)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
