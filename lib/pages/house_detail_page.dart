import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseDetailPage extends StatelessWidget {
  const HouseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: Color(0xff89899A),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Details",
                                style: GoogleFonts.montserrat(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 270.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://www.requieromicasaventas.com/wp-content/uploads/2019/09/Casas-en-venta-en-Lima.jpg")),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Minimal House",
                            style: GoogleFonts.montserrat(
                              color: Color(0xff31404E),
                              fontWeight: FontWeight.bold,
                              fontSize: 21.0,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 643",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff31404E),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 21),
                            ),
                            Text(
                              "/Month",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff59606C),
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFBC014),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFBC014),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFBC014),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFBC014),
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Color(0xffFBC014),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "4.5",
                          style: GoogleFonts.montserrat(
                              color: Colors.black38,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                height: 55.0,
                                width: 55.0,
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
                                    Image.asset(
                                      "assets/images/bed.png",
                                      color: Color(0xff44A5FD),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bedroom",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 15.0,
                                      color: Color(0xffC8CBD1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "5 Rooms",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.0,
                                      color: Color(0xff31404E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                height: 55.0,
                                width: 55.0,
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
                                    Image.asset(
                                      "assets/images/hot_tub.png",
                                      color: Color(0xff44A5FD),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bathroom",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 15.0,
                                      color: Color(0xffC8CBD1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "3 Rooms",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.0,
                                      color: Color(0xff31404E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Minimalist House is a comfortable residence with",
                          style: GoogleFonts.montserrat(
                            color: Color(0xffC8CBD1),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              "a minimalist theme and also suported ",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffC8CBD1),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Hola");
                              },
                              child: Text(
                                "Read more..",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff4985DA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      "Galery",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SingleChildScrollView(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior1.jpg",
                          ),
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior2.jpg",
                          ),
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior3.jpg",
                          ),
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior4.jpg",
                          ),
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior5.jpg",
                          ),
                          ItemDetailHousePage(
                            URLImage: "assets/images/interior1.jpg",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 90.0,
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
                  GestureDetector(
                    onTap: (){
                      print("Reservado");
                    },
                    child: Text(
                      "Book Now",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class ImageFullScreen extends StatelessWidget {
  String imageURL;

  ImageFullScreen({
    required this.imageURL,
  }) ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Hero(
          tag: 'my_image$imageURL',
          child: Image.asset(
            imageURL,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

class ItemDetailHousePage extends StatelessWidget {
  String URLImage;

  ItemDetailHousePage({required this.URLImage});

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: 1);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: duration,
            reverseTransitionDuration: duration,
            pageBuilder: (context, animation, _) {
              return FadeTransition(
                opacity: animation,
                child: ImageFullScreen(
                  imageURL: URLImage,
                ),
              );
            },
          ),
        );
      },
      child: Hero(
        tag: 'my_image',
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(URLImage),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
