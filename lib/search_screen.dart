import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_cafe/home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.black,
              suffixIcon: Icon(Icons.search)),
        ),
        elevation: 0,
        bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              width: MediaQuery.of(context).size.width,
              height: 35,
              child: ListView(
                  // padding: EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Center(child: Text("Pick Up")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Best to buy")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Top Deals")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Fast Delivery")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Best to buy")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Top Deals")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Container(
                      child: Center(child: Text("Fast Delivery")),
                      height: 30,
                      decoration: BoxDecoration(border: Border.all()),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                  ]),
            ),
            preferredSize: Size.fromHeight(50)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            // resturantCard("Ambience", " American . Fingerchips . Fast Food",
            //     "assets/burger.png", context),
            // resturantCard(
            //     "Tandoor Cafe",
            //     " American . Cheeseburger . Fast Food",
            //     "assets/cheeseburger.png",
            //     context),
            // resturantCard(
            //     "Ahmed Resturant",
            //     " American . Special chicken . Fast Food",
            //     "assets/chicken.png",
            //     context)
          ],
        ),
      ),
    ));
  }
}
