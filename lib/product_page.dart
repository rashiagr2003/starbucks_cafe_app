import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Container(
            // color: Colors.red,
            child: Text(
              "Products",
              style: GoogleFonts.sourceSerifPro(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("product").snapshots(),
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot ds = snapshot.data!.docs[index];

                return GestureDetector(
                  child: Card(
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
                              child: Image.network(ds["product_img"],
                                  fit: BoxFit.cover),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                    ds["product_name"],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    ds["product_rate"].toString() + " Rs",
                                    style: GoogleFonts.sourceSerifPro(
                                        fontSize: 20, color: Color(0xff000000)),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                "R.K. momos",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber.shade500,
                                ),
                                Container(
                                    child: Text(
                                  ds["product_quantity"].toString(),
                                ))
                              ],
                            ),
                            SizedBox(
                              height: 40,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Paneer momos",
                                      style: GoogleFonts.sourceSerifPro(
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Stream momos",
                                      style: GoogleFonts.sourceSerifPro(
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 22, vertical: 4),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff009F0B).withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    height: 36,
                                    child: Center(
                                        child: Text(
                                      "Fried momos",
                                      style: GoogleFonts.sourceSerifPro(
                                          fontSize: 14),
                                    )),
                                    margin: EdgeInsets.all(4),
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                FirebaseFirestore.instance
                                    .collection("Cart")
                                    .add({
                                  "cart_image": ds["product_img"],
                                  "cart_quantity": ds["product_quantity"],
                                  "cart_name": ds["product_name"],
                                  "cart_rate": ds["product_rate"],
                                });
                              },
                              child: Container(
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ));
  }

  // Column(
  //   children: [
  //     Container(
  //       child: Column(
  //         children: [
  //           Container(
  //             width: MediaQuery.of(context).size.width * 0.8,
  //             height: MediaQuery.of(context).size.height * 0.25,
  //             child: Image(
  //                 image: NetworkImage(
  //                     "https://geekrobocook.com/wp-content/uploads/2021/04/Fried-veg-momos.jpg")),
  //           )
  //         ],
  //       ),
  //       height: MediaQuery.of(context).size.height * 0.25,
  //       width: MediaQuery.of(context).size.width,
  //       decoration: BoxDecoration(
  //           color: Colors.amber, borderRadius: BorderRadius.circular(15)),
  //     )
  //   ],
  // ),

}
