import 'package:flutter/material.dart';

class MultiUseCard extends StatelessWidget {
  MultiUseCard(
      {required this.backColour,
      required this.cardIcon,
      required this.cardText});
  final Color backColour;
  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        width: 100.0,
        height: 120.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: (this.backColour == Colors.white)
                  ? Colors.black12
                  : this.backColour,
              blurStyle: BlurStyle.normal,
              blurRadius: 5.0,
            )
          ],
          color: this.backColour,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                this.cardIcon,
                size: 40.0,
                color: Colors.black,
              ),
              Text(
                this.cardText,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  ImageCard({
    required this.Asset,
    required this.lcoateName,
    required this.locateArea,
    required this.charge,
    required this.rating,
  });
  final String Asset;
  final String lcoateName;
  final String locateArea;
  final int charge;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Container(
        height: 230.0,
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.hardLight),
            image: AssetImage(
              '${this.Asset}',
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${this.lcoateName}',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white70,
                  ),
                  Text(
                    '${this.locateArea}',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${this.charge}/night",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Text(
                    "⭐ ${this.rating}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
