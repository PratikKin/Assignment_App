import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CardFile.dart';
import 'main.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Where you \nwanna go?",
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 12.0,
                          color: Colors.black26),
                    ], borderRadius: BorderRadius.all(Radius.circular(35.0))),
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25.0,
                        child: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MultiUseCard(
                      backColour: Colors.lightBlueAccent,
                      cardIcon: Icons.apartment_rounded,
                      cardText: 'Hotel',
                    ),
                    MultiUseCard(
                      backColour: Colors.white,
                      cardIcon: Icons.flight_outlined,
                      cardText: 'Flight',
                    ),
                    MultiUseCard(
                      backColour: Colors.white,
                      cardIcon: Icons.place_outlined,
                      cardText: 'Location',
                    ),
                    MultiUseCard(
                      backColour: Colors.white,
                      cardIcon: Icons.takeout_dining_rounded,
                      cardText: 'Food',
                    ),
                    MultiUseCard(
                      backColour: Colors.white,
                      cardIcon: Icons.car_rental_rounded,
                      cardText: 'Rental cars',
                    ),
                    MultiUseCard(
                      backColour: Colors.white,
                      cardIcon: Icons.man,
                      cardText: 'guide',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Hotels",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ImageCard(
                            Asset: "Image/Satorini_new.jpg",
                            lcoateName: 'Santorini',
                            locateArea: 'Greece',
                            charge: 488,
                            rating: 4.9,
                          ),
                          ImageCard(
                            Asset: "Image/Hotel_royal.jpg",
                            lcoateName: 'Hotel Royal',
                            locateArea: 'Spain',
                            charge: 280,
                            rating: 4.8,
                          ),
                          ImageCard(
                            Asset: "Image/atrium-palace-thalasso.jpg",
                            lcoateName: 'Athrium Palace',
                            locateArea: 'Greece',
                            charge: 194,
                            rating: 4.75,
                          ),
                          ImageCard(
                            Asset: "Image/H10_Pallazo_Galla.jpg",
                            lcoateName: 'H10 Palazzo Galla',
                            locateArea: 'Italy',
                            charge: 394,
                            rating: 4.6,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0),
              child: Text(
                "Hot Deals",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  showHotPage(context);
                },
                child: Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black12, BlendMode.hardLight),
                        image: AssetImage("Image/BaLi Motel Vung Tau.jpg"),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Colors.black26,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black45,
                          Colors.white,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 140.0, left: 20.0),
                          child: Container(
                            height: 30.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.redAccent.shade100,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Center(
                              child: Text(
                                "25% OFF",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BaLi Motel Vung Tau",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                "⭐ 4.9",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Indonesia",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$580/",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text(
                                    "night",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
