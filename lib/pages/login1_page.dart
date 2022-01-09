import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1C2A),
      body: Stack(
        children: [
          backgroundPage(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          color: Color(0xff00B761).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: SvgPicture.asset(
                        'assets/icons/bx-home.svg',
                        color: Color(0xff00B761),
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Text(
                      "Let's log you in",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Welcome back You've been missed!",
                      style: GoogleFonts.poppins(
                        color: Colors.white38,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffEA4335),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-google.svg',
                              color: Colors.white,
                            ),
                            label: Container(
                              margin: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Google",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff1877F2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: SvgPicture.asset(
                              'assets/icons/bxl-facebook-circle.svg',
                              color: Colors.white,
                            ),
                            label: Container(
                              margin: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Facebook",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Username",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Email Address",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xff25283A),
                        hintText: "Password",
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.white54,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff00B761),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0)
                              ),
                            ),
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 14.0),
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16.0
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account? ",
                          style: GoogleFonts.poppins(
                            color: Colors.white38,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            color: Color(0xff168BE0),
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget backgroundPage() {
    return Stack(
      children: [
        Positioned(
          top: -74,
          left: 20,
          child: Transform.rotate(
            angle: -pi / 3,
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xff00B761),
                  borderRadius: BorderRadius.circular(14.0)),
            ),
          ),
        ),
      ],
    );
  }
}