import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screenapp/CardFile.dart';

import 'TextInfo.dart';

class HotDeal extends StatefulWidget {
  @override
  State<HotDeal> createState() => _HotDealState();
}

class _HotDealState extends State<HotDeal> {
  bool isLoading = true; // Track the loading state
  void initState() {
    super.initState();
    // Simulate a loading delay of 2 seconds
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isLoading = false; // Update the loading state
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? buildLoadingScreen() : buildContentScreen();
  }

  Widget buildLoadingScreen() {
    return Scaffold(
      body: Center(
        child: SpinKitCircle(
          color: Color.fromARGB(255, 0, 128, 255), // Customize the color
          size: 50.0, // Customize the size
        ),
      ),
    );
  }

  Widget buildContentScreen() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.green,
            Colors.blue,
            Colors.white,
          ])),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Image/BaLi Motel Vung Tau.jpg"),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 28.0, bottom: 15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.0,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.keyboard_backspace_outlined,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25.0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 120.0,
                    ),
                    Container(
                      height: 35.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(
                        child: Text(
                          "124 photos",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1.3,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BaLi Motel\nVung Tau",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                        color: Colors.black,
                        fontSize: 35.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        Text(
                          "Indonesia",
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "⭐ 4.9",
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              "(6.8K Review)",
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$580/",
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "night",
                              style: TextStyle(
                                fontFamily: 'Rubik',
                                color: Colors.black,
                                fontSize: 15.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                      child: Divider(
                        thickness: 2.0,
                      ),
                    ),
                    LimitedTextArea(
                      text:
                          "Set in Vung Tau, 100 metres from Front Beach, BaLi "
                          "Motel Vung Tau offers accommodation with a garden,"
                          " private parking, a shared lounge and a terrace. "
                          "Located around 2.3 km from Back Beach, the guest "
                          "house with free WiFi is also 2.3 km away from "
                          "Pineapple Beach. The accommodation provides a "
                          "shared kitchen, room service and luggage storage "
                          "for guests. At the guest house, all rooms are "
                          "fitted with a desk. Complete with a private "
                          "bathroom fitted with a bidet and free toiletries,"
                          " all guest rooms at BaLi Motel Vung Tau have a "
                          "flat-screen TV and air conditioning, and some "
                          "rooms also offer a balcony. At the accommodation "
                          "all rooms have bed linen and towels. Speaking "
                          "English and Vietnamese, staff at the 24-hour "
                          "front desk can help you plan your stay. Popular "
                          "points of interest near BaLi Motel Vung Tau "
                          "include White Palace, Express Ship Harbour and "
                          "Lam Son Stadium. The nearest airport is Vung Tau "
                          "Airport, 5 km from the guest house.",
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "What we offer",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.hotel_outlined,
                            cardText: "2 Bed",
                          ),
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.lunch_dining_outlined,
                            cardText: "Dinner",
                          ),
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.bathtub_outlined,
                            cardText: "Hot tub",
                          ),
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.ac_unit_outlined,
                            cardText: "Air Conditioner",
                          ),
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.tv_outlined,
                            cardText: "LCD TV",
                          ),
                          MultiUseCard(
                            backColour: Colors.white,
                            cardIcon: Icons.curtains_outlined,
                            cardText: "Mountain View",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    Text(
                      "Hosted by",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 65.0,
                            width: 65.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    blurStyle: BlurStyle.normal,
                                    blurRadius: 5.0,
                                    color: Colors.amberAccent.shade700,
                                  ),
                                ],
                                color: Colors.amberAccent),
                            child: Image(
                              image: AssetImage("Image/user_female.png"),
                              height: 60.0,
                              width: 60.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0, right: 40.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Harleen Smith",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "⭐ 4.9 ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      "(1.4K Review)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 65.0,
                            width: 65.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    blurStyle: BlurStyle.normal,
                                    blurRadius: 5.0,
                                    color: Colors.amberAccent.shade700,
                                  ),
                                ],
                                color: Colors.amberAccent),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.message,
                                size: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.blueAccent,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 12.0,
                                  blurStyle: BlurStyle.normal,
                                  color: Colors.lightBlueAccent)
                            ]),
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

 */
