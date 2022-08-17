import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/create_account_screen.dart';
import 'package:star_cafe/splash_screen.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                // FirebaseFirestorePlatform.instance
                //     .collection("Rashi")
                //     .doc("La7DHkV5fvMmTerm8uCf")
                //     .update({"name": "Arin"});
              },
              child: Container(
                margin: EdgeInsets.only(right: 100),
                child: Text(
                  "Find food near you",
                  style: GoogleFonts.sourceSerifPro(
                      fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "We need to know your address in order to find delicious",
                style: GoogleFonts.sourceSerifPro(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 23, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: Color(0xff707070).withOpacity(0.21))),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                    Container(
                      width: 105,
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter address",
                              border: InputBorder.none)),
                    ),
                  ],
                )),
            Divider(
              thickness: 1,
              color: Color(0xff707070).withOpacity(0.10),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Image(image: AssetImage("assets/Communication-icon.png")),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    "Current Location",
                    style: GoogleFonts.sourceSerifPro(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Address304 Nettleton St, Charlevoix, MI, 49720 delver to door",
                  style: GoogleFonts.sourceSerifPro(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(0.50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
