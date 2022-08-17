import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool ispast = true;

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch "_url"';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(15)),
                    height: 33,
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              ispast = true;
                            });
                          },
                          child: Container(
                            decoration: ispast
                                ? BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15))
                                : BoxDecoration(),
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: Center(
                              child: Text(
                                "Past Orders",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //_launchURL("sms:9452935405");
                            Share.share(
                                'check out my website https://example.com');
                            setState(() {
                              ispast = false;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: ispast == false
                                ? BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15))
                                : BoxDecoration(),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "Upcoming",
                                  style: GoogleFonts.sourceSerifPro(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("Cart").snapshots(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot ds = snapshot.data!.docs[index];

                      return cart_card(
                        ds["cart_image"],
                        ds["cart_name"],
                        ds["cart_quantity"],
                        ds["cart_rate"],
                      );
                    },
                  );
                },
              ),
            ],
            // SizedBox(
            //   height: 90,
            // ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.70,
            //   width: MediaQuery.of(context).size.width,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Container(
            //         height: 250,
            //         child: ispast
            //             ? CircleAvatar(
            //                 radius: 140,
            //                 backgroundColor: Colors.red.withOpacity(0.02),
            //                 //backgroundImage: AssetImage("assets/Ellipse 40.png"),
            //                 child: CircleAvatar(
            //                   radius: 80,
            //                   backgroundColor: Colors.red.withOpacity(0.02),
            //                   backgroundImage:
            //                       AssetImage("assets/Ellipse 40.png"),
            //                   child: Image(
            //                       image: AssetImage("assets/Order.png")),
            //                 ),
            //               )
            //             : Container(
            //                 height: 100,
            //                 width: 100,
            //                 color: Colors.red,
            //               ),
            //       ),
            //       SizedBox(
            //         height: 80,
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20),
            //             color: Color(0xff000000)),
            //         height: 60,
            //         width: MediaQuery.of(context).size.width * 0.9,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             Container(
            //               child: Padding(
            //                 padding: const EdgeInsets.only(left: 80),
            //                 child: Text(
            //                   "View Basket",
            //                   style: GoogleFonts.sourceSerifPro(
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.white),
            //                 ),
            //               ),
            //             ),
            //             Container(
            //               child: Padding(
            //                 padding: const EdgeInsets.only(left: 20),
            //                 child: Text(
            //                   "US\$11.79",
            //                   style: GoogleFonts.sourceSerifPro(
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.white),
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       )
            //  ],
            // ),
            // )
            //],
          ),
        ),
      ),
    );
  }

  Widget cart_card(
      String imgurl, String itemName, int itemNumber, int itemRate) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        height: 80,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24),
                    child: Image(
                      image: NetworkImage(imgurl),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        itemName,
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 15, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Per Piece",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8, right: 8),
                          height: 20,
                          width: 20,
                          child: Icon(
                            FontAwesomeIcons.minus,
                            size: 12,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.green.shade700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            child: Text(
                              itemNumber.toString(),
                              style: GoogleFonts.sourceSerifPro(
                                  fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, top: 8),
                          height: 20,
                          width: 20,
                          child: Icon(
                            FontAwesomeIcons.plus,
                            size: 12,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.green.shade700),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    FontAwesomeIcons.trash,
                    size: 22,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 2),
                  child: Text(
                    itemRate.toString() + "Rs",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
