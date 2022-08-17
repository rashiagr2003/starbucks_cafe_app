import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("items").snapshots(),
        builder: (context, snapshot) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot ds = snapshot.data!.docs[index];
              // FirebaseFirestore.instance.collection("Outcome").add({
              //   "outcome_image": ds["user_item_image"],
              //   "outcome_product": ds["user_item_name"],
              //   "outcome_address": ds["user_address"],
              //   "outcome_rate": ds["user_item_price"],
              // });

              return Card(
                elevation: 4,
                child: SizedBox(
                    height: 310,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 134,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.network(ds["user_item_image"],
                                fit: BoxFit.cover),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  ds["user_item_name"],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              Container(
                                child: Text(
                                  ds["user_item_price"],
                                  style: GoogleFonts.sourceSerifPro(
                                      fontSize: 20, color: Color(0xff000000)),
                                ),
                              )
                            ],
                          ),
                          Container(
                            child: Text(
                              ds["user_address"],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black26,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(8)),
                            margin: EdgeInsets.all(8),
                            child: Text(
                              "Add to cart",
                              style: GoogleFonts.sourceSerifPro(
                                  fontSize: 14, color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                    )),
              );
            },
          );
        },
      ),
    );
  }
}
