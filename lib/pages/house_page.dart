import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_codigo4_ui/pages/house_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _iconColor = Color(0xff85C4FC);

    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff349DFD),
                                    size: 15,
                                  ),
                                  Text(
                                    "Location",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Arequipa, Perú",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff31404E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Color(0xffC5C5C5),
                              ),
                              Positioned(
                                top: 4,
                                right: 3,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 12,
                              offset: Offset(-4, 4),
                            ),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xffB2B2B3),
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xffC6C6C6),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetailPage()));
                            },
                            child: Container(
                              height: 44,
                              margin: EdgeInsets.only(right: 14.0),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 6.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffEFF4FD),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/house.png',
                                    height: 26,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    "House",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0xff31404E),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Hotel",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Apartment",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Hotel",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 24.0,
                    ),

                    Text(
                      "Recomendation",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 24.0,
                    ),

                    Text(
                      "Recomendation",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    ListView.builder(
                      itemCount: 10,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index){return ItemRecomendationPlace();}),
                    SizedBox(
                      height: 70.0,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              height: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Color(0xff349DFD),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), iconSize: 30.0, color: Colors.white,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart), iconSize: 30.0, color: Colors.white38,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.bookmark), iconSize: 30.0, color: Colors.white38,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.person), iconSize: 30.0, color: Colors.white38,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemRecomendationPlace extends StatelessWidget {
  const ItemRecomendationPlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              blurRadius: 12,
              offset: Offset(4,4),
            ),
          ]
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://i.pinimg.com/originals/e8/f4/e2/e8f4e23622efe8e2a09adbfb93fbc504.jpg")
                )
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Padanaran House",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: Color(0xff434B55),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, size: 13, color: Color(0xffFBC014),),
                      Icon(Icons.star, size: 13, color: Color(0xffFBC014),),
                      Icon(Icons.star, size: 13, color: Color(0xffFBC014),),
                      Icon(Icons.star, size: 13, color: Color(0xffFBC014),),
                      Icon(Icons.star, size: 13, color: Color(0xffFBC014),),
                      Text(
                        "4.5",
                        style: GoogleFonts.montserrat(
                            color: Colors.black38,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.black38, size: 14,),
                      Expanded(
                        child: Text(
                          "Arequipa, Perú Arequipa, Perú Arequipa, Perú Arequipa, Perú",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                              color: Colors.black38,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemSliderRecomendation extends StatelessWidget {
  const ItemSliderRecomendation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HouseDetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(right: 14.0, bottom: 20.0),
        width: 240,
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.05),
                offset: Offset(4,4),
                blurRadius: 12,
              ),
            ]
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://www.requieromicasaventas.com/wp-content/uploads/2019/09/Casas-en-venta-en-Lima.jpg"),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Minimalist House",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                      color: Color(0xff434B55),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                        Icons.star,
                        size: 14.0,
                        color: Color(0xffFEC00A)
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "4.5",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff434B55),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$ 643",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff349DFD),
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),
                          ),
                          Text(
                            "/Month",
                            style: GoogleFonts.montserrat(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 14.0,
                            color: Colors.black38,
                          ),
                          Expanded(
                            child: Text(
                              "Arequipa, Perú Lima Cusco",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}