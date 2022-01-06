import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Center(
                          child: Text(
                            "Past Orders",
                            style: GoogleFonts.sourceSerifPro(
                                fontSize: 13, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Text(
                              "Upcoming",
                              style: GoogleFonts.sourceSerifPro(
                                  fontSize: 13, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                CircleAvatar(
                  radius: 140,
                  backgroundColor: Colors.red.withOpacity(0.02),
                  backgroundImage: AssetImage("assets/Ellipse 40.png"),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.red.withOpacity(0.02),
                    backgroundImage: AssetImage("assets/Ellipse 40.png"),
                    child: Image(image: AssetImage("assets/Order.png")),
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff000000)),
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            "View Basket",
                            style: GoogleFonts.sourceSerifPro(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "US\$11.79",
                            style: GoogleFonts.sourceSerifPro(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
