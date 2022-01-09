import 'package:flutter/material.dart';
import 'package:flutter_codigo4_ui/pages/house_page.dart';
import 'package:flutter_codigo4_ui/pages/login1_page.dart';
import 'package:flutter_codigo4_ui/pages/login2_page.dart';
import 'package:flutter_codigo4_ui/pages/parkin_page.dart';
import 'package:flutter_codigo4_ui/pages/sport_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Diseños",
                style: GoogleFonts.lato(
                  fontSize: 17.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              ItemListWidget(
                title: "Login 1 Page",
                toPage: Login1Page(),
              ),
              ItemListWidget(
                title: "Login 2 Page",
                toPage: Login2Page(),
              ),
              ItemListWidget(
                title: "House Page",
                toPage: HousePage(),
              ),
              ItemListWidget(
                title: "Parkin Page",
                toPage: ParkingPage(),
              ),
              ItemListWidget(
                title: "Sport Page",
                toPage: SportPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemListWidget({
  required  this.title, required this.toPage
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.09),
            offset: Offset(4,4),
          )
        ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text("Go to details of $title "),
        leading: Icon(Icons.login),
        trailing: Text("Go"),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
        },
      ),
    );
  }
}
