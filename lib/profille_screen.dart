import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/notification_screen.dart';
import 'package:star_cafe/payment_screen.dart';
import 'package:star_cafe/promotional_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 12),
                child: CircleAvatar(
                    radius: 33,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/originals/f3/7e/3b/f37e3b6d3b8f2f8d0724875754d95797.png")),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    height: 24,
                    child: Text(
                      "Jack Hawkins",
                      style: GoogleFonts.sourceSerifPro(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, right: 35),
                    height: 17,
                    child: Text(
                      "View Account",
                      style: GoogleFonts.sourceSerifPro(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff009F0B)),
                    ),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                  height: 102,
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Image.asset("assets/Covid_banner.png")),
              SizedBox(
                height: 20,
              )
            ],
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/heart_icon.png")),
              decoration: BoxDecoration(
                  color: Color(0xffFF0052).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: Text(
              "Your Favorites",
              style:
                  GoogleFonts.sourceSerifPro(fontSize: 16, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/credit_icon.png")),
              decoration: BoxDecoration(
                  color: Color(0xff1FA6EA).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentScreen()));
              },
              child: Text(
                "Payments",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/help_center.png")),
              decoration: BoxDecoration(
                  color: Color(0xff009F0B).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: Text(
              "Help",
              style:
                  GoogleFonts.sourceSerifPro(fontSize: 16, color: Colors.black),
            ),
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/tag.png")),
              decoration: BoxDecoration(
                  color: Color(0xffD6CFF0),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PromotionalPage()));
              },
              child: Text(
                "Promotion",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/hm_icons_bell.png")),
              decoration: BoxDecoration(
                  color: Color(0xffFCA54D).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              child: Text(
                "Notification",
                style: GoogleFonts.sourceSerifPro(
                    fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Container(
              height: 35,
              width: 35,
              child: Image(image: AssetImage("assets/shopping-bag.png")),
              decoration: BoxDecoration(
                  color: Color(0xff3572FF).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(10)),
            ),
            title: Text(
              "Deliver with Foodly",
              style:
                  GoogleFonts.sourceSerifPro(fontSize: 16, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
