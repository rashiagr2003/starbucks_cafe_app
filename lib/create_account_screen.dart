import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/home_screen.dart';
import 'package:star_cafe/main_screens.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isVisibile = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Group.png"))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "FOOD PLAZA",
                    style: TextStyle(
                        fontSize: 25.52,
                        fontWeight: FontWeight.w900,
                        color: Colors.teal.shade900),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Welcome back!",
                        style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
                    style: GoogleFonts.inter(color: Color(0xff4D5661)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  padding: EdgeInsets.only(top: 5, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                    controller: _fNameController,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  padding: EdgeInsets.only(top: 5, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                    controller: _lNameController,
                    decoration: InputDecoration(
                      hintText: "last Name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                    padding: EdgeInsets.only(top: 5, left: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(),
                        color: Colors.white),
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Text(
                            "+91",
                            style: GoogleFonts.sourceSerifPro(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          height: 40,
                          child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  height: 40,
                  child: TextField(
                      controller: _passwordController,
                      obscureText: !isVisibile,
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isVisibile = !isVisibile;
                              });
                            },
                            child: Icon(FontAwesomeIcons.eye),
                          )

                          //  IconButton(
                          //     onPressed: () {
                          // setState(() {
                          //   isVisibile = !isVisibile;
                          // });
                          //     },
                          //     icon: Icon(FontAwesomeIcons.eye)),
                          )),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          print("email is " + _emailController.text);
                          print("name is " + _fNameController.text);
                          print("name is " + _lNameController.text);
                          print("My Password is " + _passwordController.text);
                          print("My phone no. is " + _phoneController.text);

                          // FirebaseFirestore.instance
                          //     .collection("Restaurants")
                          //     .add({
                          //   "restaurant_img":
                          //       "https://r1imghtlak.mmtcdn.com/6cf45a9c788a11e9ab1b0242ac110003.jpg?&output-quality=75&downsize=910:612&crop=910:612;0,35&output-format=jpg",
                          //   "restaurant_name": "jhansi hotel",
                          //   "restaurant_phone": "077030 07570",
                          //   "restaurant_time": "10am-12am",
                          //   "restaurant_peopleSay": "very good",
                          //   "restaurant_address":
                          //       "2, Sadar Bazar - Jhansi Rd, opposite Post Office, Civil Lines, Cantt, Jhansi, Uttar Pradesh 284001",
                          //   "delivery_charge": 40,
                          //   "rating_count": 25,
                          //   "rating": 4.8,
                          // });
                          if (_fNameController.text.isNotEmpty &&
                              _lNameController.text.isNotEmpty &&
                              _emailController.text.isNotEmpty &&
                              _passwordController.text.isNotEmpty &&
                              _phoneController.text.length == 10) {
                            FirebaseFirestore.instance.collection("Users").add({
                              "first_name": _fNameController.text,
                              "last_name": _lNameController.text,
                              "email": _emailController.text,
                              "phone": _phoneController.text,
                              "password": _passwordController.text
                            });

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Please fill all details properly"),
                              backgroundColor: Colors.black,
                            ));
                          }
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => MainScreen()));
                        },
                        child: Container(
                          width: 328,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color(0xff4AA366),
                          ),
                          child: Center(
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(12),
                      width: 156,
                      child: Text("Forgot your password?",
                          style: TextStyle(
                              color: Color(0xff4D5661),
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
