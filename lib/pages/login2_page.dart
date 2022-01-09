import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            buildBackground(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your Account!",
                      style: GoogleFonts.poppins(
                          color: Color(0xff342073),
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          height: 1.05),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff72538E),
                        ),
                        hintText: "Email address",
                        hintStyle: GoogleFonts.poppins(
                            color: Color(0xff72538E).withOpacity(0.6),
                            fontSize: 15.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff72538E),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xff72538E),
                        ),
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                            color: Color(0xff72538E).withOpacity(0.6),
                            fontSize: 15.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff72538E)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color:  Color(0xffD74286).withOpacity(0.6),
                              blurRadius: 30,
                              offset: Offset(0, 10),
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffee91bc),
                              Color(0xffD74286),
                            ],
                          )
                      ),
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildBackground() {
    return Stack(
      children: [
        Positioned(
          right: -150,
          top: -150,
          child: MyCircleGradient(
            radius: 200,
            colors: [
              Color(0xffee91bc),
              Color(0xffD74286),
            ],
          ),
        ),
        Positioned(
          bottom: -150,
          left: -100,
          child: MyCircleGradient(
            radius: 140,
            colors: [
              Color(0xffa692e8),
              Color(0xff5E4A9B),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 30,
          child: MyCircleGradient(
            radius: 20,
            colors: [
              Color(0xffa692e8),
              Color(0xff5E4A9B),
            ],
          ),
        ),
      ],
    );
  }
}

class MyCircleGradient extends StatelessWidget {
  List<Color> colors;
  double radius;

  MyCircleGradient({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: colors[1].withOpacity(0.7),
              blurRadius: 12,
              offset: Offset(0, 0))
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
    );
  }
}