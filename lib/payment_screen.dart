import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var colors;
    return DefaultTabController(
      initialIndex: 0, // default is 0
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
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
          title: Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Center(
              child: Text(
                "Payments",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Card",
              ),
              Tab(
                text: "Paypal",
              ),
              Tab(
                text: "Gift Card",
              )
            ],
            labelColor: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Center(
                child: Image(
                  image: AssetImage("assets/Credit_card.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Card Number"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          decoration: InputDecoration(labelText: "Exp Date"),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          decoration: InputDecoration(labelText: "CVV"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          decoration: InputDecoration(labelText: "Country"),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          decoration: InputDecoration(labelText: "Post Code"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Center(
                  child: Text(
                "Save",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
              margin: EdgeInsets.only(
                top: 80,
              ),
              height: 60,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
