import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/buy_page.dart';
import 'package:star_cafe/number_screen.dart';

class SellPage extends StatefulWidget {
  const SellPage({Key? key}) : super(key: key);

  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  TextEditingController _uNameController = TextEditingController();
  TextEditingController _uAddressController = TextEditingController();
  TextEditingController _uPincodeController = TextEditingController();
  TextEditingController _uPhnNumberController = TextEditingController();
  TextEditingController _uItemNameController = TextEditingController();
  TextEditingController _uItemPriceController = TextEditingController();
  TextEditingController _uItemImageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image(
                image: NetworkImage(
                    "https://aceola.com/wp-content/uploads/2020/03/sell-wtih-us.jpg"),
                fit: BoxFit.fill,
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), border: Border.all()),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uNameController,
                        decoration: InputDecoration(
                            hintText: "Name", border: InputBorder.none)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uAddressController,
                        decoration: InputDecoration(
                            hintText: "Address", border: InputBorder.none)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uPincodeController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Pincode",
                          border: InputBorder.none,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uPhnNumberController,
                        decoration: InputDecoration(
                            hintText: "Phone Number",
                            border: InputBorder.none)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uItemNameController,
                        decoration: InputDecoration(
                            hintText: "Item Name", border: InputBorder.none)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uItemPriceController,
                        decoration: InputDecoration(
                            hintText: "Item Price", border: InputBorder.none)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(4),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, left: 8),
                    child: TextField(
                        controller: _uItemImageController,
                        decoration: InputDecoration(
                            hintText: "Item Image", border: InputBorder.none)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BuyPage()));
                    FirebaseFirestore.instance.collection("items").add({
                      "user_name": _uNameController.text,
                      "user_address": _uAddressController.text,
                      "user_pincode": _uPincodeController.text,
                      "user_phn_no.": _uPhnNumberController.text,
                      "user_item_name": _uItemNameController.text,
                      "user_item_price": _uItemPriceController.text,
                      "user_item_image": _uItemImageController.text,
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 75),
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(8),
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12, left: 8),
                      child: Text("Continue",
                          style: TextStyle(
                              fontSize: 30.5, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
