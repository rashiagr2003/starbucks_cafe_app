import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var bodyfit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Rashi Agrawal"),
                accountEmail: Text("rashiagrawaljhs00@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://blogger.googleusercontent.com/img/a/AVvXsEh1N0g7FvzIgsajR7ZTa7jpff_fB2PpTuyJUJ9BuolEmUnxzqbn3BFLsnmDhOIsfTsIIVDMNvX47ck7mRd3E6lsEEbQ4WROFX9b91fvWTCnTWFbpt6Mhfc2wIB34mlgCA-Vy1lmer0d6ybvG24Et330ELYIwofVZTyBokkFO6m1oUa4AeheOUfE2Nnl=s16000"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                Icons.router_rounded,
              ),
              title: Text("Search history"),
            ),
            ListTile(
              leading: Icon(
                Icons.collections,
              ),
              title: Text("Collection"),
            ),
            ListTile(
              leading: Icon(Icons.search_off_sharp),
              title: Text("Offline searches"),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 150,
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    elevation: 10,
                    backgroundColor: Colors.amber,
                    context: context,
                    builder: (context) => Container(
                        width: 300,
                        height: 250,
                        color: Colors.white54,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              child: TextField(
                                decoration: InputDecoration(hintText: "Email"),
                              ),
                            ),
                            Container(
                              child: TextField(
                                decoration: InputDecoration(hintText: "Email"),
                              ),
                            )
                          ],
                        )));
              },
              child: Center(child: Text("Press"))),
        ),
      ),
    );
  }
}
