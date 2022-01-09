import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParkingPage extends StatelessWidget {
  const ParkingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    return Scaffold(
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff0A4A50),
                    Color(0xff06182B),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Parkirin",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "24 °C",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              "assets/images/cloudy.png",
                              height: 26.0,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        "Let's find a place for you",
                        style: GoogleFonts.montserrat(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              cursorColor: Color(0xff90949A),
                              style: GoogleFonts.montserrat(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                  borderSide: BorderSide.none,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff90949A),
                                ),
                                hintText: "Find parking place",
                                hintStyle: GoogleFonts.montserrat(
                                    color: Color(0xff90949A),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(14.0),
                            margin: EdgeInsets.symmetric(horizontal: 14.0),
                            decoration: BoxDecoration(
                              color: Color(0xffFFB302),
                              borderRadius: BorderRadius.circular(14.0),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xffFAB805),
                                  Color(0xffF6CB1E),
                                ],
                              ),
                            ),
                            child: Icon(
                              Icons.filter_alt,
                              color: Colors.white,
                              size: 26.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Parking Near You",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff13253C),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0),
                  ),
                  Row(
                    children: [
                      Text(
                        "View More",
                        style: GoogleFonts.montserrat(
                            color: Color(0xffF7C714),
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xffF7C714),
                        size: 16.0,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.07),
                                  offset: Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/images/maps.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Blol C Benyamin",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff13253C),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Av. Gonzales Prada 114 - Cayma asdsad ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff999999),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              children: [
                                Text(
                                  "Open",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff32b695),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " 05:00 - 22:00",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff999999),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.07),
                                  offset: Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/images/maps.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Blol C Benyamin",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff13253C),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Av. Gonzales Prada 114 - Cayma asdsad ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff999999),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              children: [
                                Text(
                                  "Open",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff32b695),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " 05:00 - 22:00",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff999999),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.07),
                                  offset: Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/images/maps.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Blol C Benyamin",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff13253C),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Av. Gonzales Prada 114 - Cayma asdsad ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff999999),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              children: [
                                Text(
                                  "Open",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff32b695),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " 05:00 - 22:00",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff999999),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.07),
                                  offset: Offset(4, 4),
                                  blurRadius: 10,
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('assets/images/maps.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Blol C Benyamin",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff13253C),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Text(
                              "Av. Gonzales Prada 114 - Cayma asdsad ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff999999),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 6.0),
                            child: Row(
                              children: [
                                Text(
                                  "Open",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff32b695),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  " 05:00 - 22:00",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff999999),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History Parking",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff13253C),
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0),
                  ),
                ],
              ),
            ),


            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.05),
                        blurRadius: 12,
                        offset: Offset(5, 5)),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Image.asset(
                      'assets/images/car.png',
                      height: 56,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Blok C Benyamin",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff13253C),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Av. Gonzales Prada 114 - Cayma",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff999999),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "04, Sep 2021",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff999999),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "S/. 30.00",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff32b695),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.05),
                        blurRadius: 12,
                        offset: Offset(5, 5)),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Image.asset(
                      'assets/images/car.png',
                      height: 56,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Blok C Benyamin",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff13253C),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Av. Gonzales Prada 114 - Cayma",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff999999),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "04, Sep 2021",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff999999),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "S/. 30.00",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff32b695),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.05),
                        blurRadius: 12,
                        offset: Offset(5, 5)),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Image.asset(
                      'assets/images/car.png',
                      height: 56,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Blok C Benyamin",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff13253C),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Av. Gonzales Prada 114 - Cayma",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff999999),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "04, Sep 2021",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff999999),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "S/. 30.00",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff32b695),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.05),
                        blurRadius: 12,
                        offset: Offset(5, 5)),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0, right: 4.0),
                    child: Image.asset(
                      'assets/images/car.png',
                      height: 56,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Blok C Benyamin",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff13253C),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            "Av. Gonzales Prada 114 - Cayma",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Color(0xff999999),
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "04, Sep 2021",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff999999),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Text(
                          "S/. 30.00",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Color(0xff32b695),
                              fontSize: 13.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}