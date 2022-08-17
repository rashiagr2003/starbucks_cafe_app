import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Card(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/Group.png"))),
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
                                "Login",
                                style: GoogleFonts.inter(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 10),
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Text(
                            "You can now login with your Food Plaza username",
                            style: GoogleFonts.inter(color: Color(0xff4D5661)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 10),
                          padding: EdgeInsets.only(top: 5, left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(),
                              color: Colors.white),
                          height: 40,
                          child: TextField(
                            controller: _fNameController,
                            decoration: InputDecoration(
                              hintText: "User Name",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 10),
                          padding: EdgeInsets.only(top: 5, left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(),
                              color: Colors.white),
                          height: 40,
                          child: TextField(
                            controller: _lNameController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: InputBorder.none,
                            ),
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
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Container(
                          width: 328,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 46, 70, 173),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(12),
                              width: 200,
                              child: Text("Don't have an account? Sign up",
                                  style: TextStyle(
                                      color: Color(0xff4D5661),
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ),
                      ]),
                )),
          ],
        ),
      ),
    ));
  }
}
