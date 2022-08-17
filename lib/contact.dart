import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.blueAccent,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 25),
                        child: Container(
                          child: Text(
                            "Contact Us",
                            style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1D4D4F)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        height: 24,
                        child: Text(
                          "Name",
                          style: GoogleFonts.sourceSerifPro(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 25, top: 10, bottom: 10, right: 25),
                        height: 24,
                        child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: " Your Full Name",
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        height: 24,
                        child: Text(
                          "Email",
                          style: GoogleFonts.sourceSerifPro(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 25, top: 10, bottom: 10, right: 25),
                        height: 24,
                        child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: " Your email",
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        height: 24,
                        child: Text(
                          "Message",
                          style: GoogleFonts.sourceSerifPro(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: 25, top: 10, bottom: 10, right: 25),
                        height: 24,
                        child: TextField(
                            controller: _messageController,
                            decoration: InputDecoration(
                              hintText: " Your message here",
                            )),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            // FirebaseFirestore.instance
                            //     .collection("queries")
                            //     .add({
                            //   "Name": _nameController.text,
                            //   "Email": _emailController.text,
                            //   "Queries": _messageController.text,
                            // }).then((value) => {
                            //           ScaffoldMessenger.of(context)
                            //               .showSnackBar(const SnackBar(
                            //             content: Text("Query Added"),
                            //             backgroundColor: Colors.green,
                            //           )),

                            //         });

                            // FirebaseFirestore.instance
                            //     .collection("queries")
                            //     .doc("9VRKqwehvcJAhjxJ611v")
                            //     .delete();
                            // FirebaseFirestore.instance
                            //     .collection("queries")
                            //     .doc("DkHExKq1cCIwreEGqmiu")
                            //     .delete();

                            FirebaseFirestore.instance
                                .collection("queries")
                                .doc("jYP1O87ZeYbvIcmYgmIV")
                                .update({
                              "Email": "arinagr2005@gmail.com",
                              "Name": "Arin Agrawal",
                              "Queries": "Hi i forgot my password and user id"
                            });
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "SEND NOW",
                                style: GoogleFonts.sourceSerifPro(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 20),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 400,
                  width: 300,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
