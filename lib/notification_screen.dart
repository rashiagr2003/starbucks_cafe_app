import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var color;

  var onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E6E6),
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
              "Notifications Setting",
              style: GoogleFonts.sourceSerifPro(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16.0, top: 10),
                      child: Text(
                        "Push Notifications",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 10, bottom: 25),
                      child: Text(
                        "To Turn notifications about order on or off, go to app settings on your phone",
                        style: GoogleFonts.sourceSerifPro(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.55)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  NotificationCard(
                    imageUrl: "assets/discount (1).png",
                    title: "Off",
                    subtitle:
                        "Discounts, offers, and promotions forinviting friends",
                    backgroundColor: Color(0xffFF0A38),
                  ),
                  NotificationCard(
                    imageUrl: "assets/premium.png",
                    title: "Rewards",
                    subtitle: "Our program to earn status as your order",
                    backgroundColor: Color(0xffFFDE0A),
                  ),
                ],
              ),
              Row(
                children: [
                  NotificationCard(
                    imageUrl: "assets/credit_icon.png",
                    title: "Eats Pass",
                    subtitle: "Update and benefits for our monthly pass.",
                    backgroundColor: Color(0xff00C5FF),
                  ),
                  NotificationCard(
                    imageUrl: "assets/event.png",
                    title: "Other",
                    subtitle: "Events, recommendations,and other message",
                    backgroundColor: Color(0xff9E86FF),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget notificationCard() {
  //   return Container(
  //     padding: EdgeInsets.only(left: 15),
  //     height: 250,
  //     width: MediaQuery.of(context).size.width * 0.45,
  //     decoration: BoxDecoration(
  //         color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(15)),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         CircleAvatar(
  //           child: Container(
  //             child: Image(image: AssetImage("assets/discount (1).png")),
  //           ),
  //           radius: 33,
  //           backgroundColor: Color(0xffFF0A38).withOpacity(0.10),
  //         ),
  //         Container(
  //           child: Text(
  //             "Offers",
  //             style: GoogleFonts.sourceSerifPro(
  //                 fontSize: 18,
  //                 fontWeight: FontWeight.w600,
  //                 color: Colors.black),
  //           ),
  //         ),
  //         Container(
  //           child: Text(
  //             "Discounts, offers, and promotions forinviting friends",
  //             style: GoogleFonts.sourceSerifPro(
  //                 fontSize: 14,
  //                 fontWeight: FontWeight.w600,
  //                 color: Colors.black.withOpacity(0.55)),
  //           ),
  //         ),
  //         Switch(value: true, onChanged: onChanged)
  //       ],
  //     ),
  //   );
  // }
}

class NotificationCard extends StatefulWidget {
  String title, imageUrl, subtitle;
  Color backgroundColor;

  // ignore: use_key_in_widget_constructors
  NotificationCard(
      {required this.imageUrl,
      required this.subtitle,
      required this.title,
      required this.backgroundColor});

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  bool isEnable = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12, left: 10),
      padding: EdgeInsets.only(left: 15),
      height: 250,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Container(
              child: Image(image: AssetImage(widget.imageUrl)),
            ),
            radius: 33,
            backgroundColor: widget.backgroundColor.withOpacity(0.1),
          ),
          Container(
            child: Text(
              widget.title,
              style: GoogleFonts.sourceSerifPro(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Text(
              widget.subtitle,
              style: GoogleFonts.sourceSerifPro(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.55)),
            ),
          ),
          Switch(
              value: isEnable,
              onChanged: (value) {
                setState(() {
                  isEnable = value;
                });
              })
        ],
      ),
    );
  }
}
