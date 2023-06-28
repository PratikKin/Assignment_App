import 'package:flutter/material.dart';

import 'HotDealSample.dart';
import 'LandingPage.dart';

void main() {
  runApp(ScreenApp());
}

class ScreenApp extends StatefulWidget {
  @override
  State<ScreenApp> createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}

void showHotPage(BuildContext ctx) {
  showModalBottomSheet(
    context: ctx,
    backgroundColor: Colors.white12.withOpacity(1.0),
    builder: (_) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(144, 206, 216, 0.16),
                Color.fromRGBO(205, 235, 241, 0.8),
                Color.fromRGBO(41, 94, 118, 0.8),
              ]),
          // borderRadius: BorderRadius.circular(50.0),
        ),
        height: MediaQuery.of(ctx).size.height * 1.0,
        child: HotDeal(),
      );
    },
    useSafeArea: true,
    isScrollControlled: true,
    /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),*/
  );
}
