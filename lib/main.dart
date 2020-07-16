import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final pages = [
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      title: Text("Recycle"),
      body: Text(
        "Recycling is the process to converting waste materials into new materials and objects",
        style: TextStyle(fontSize: 18),
      ),
      mainImage: Image.asset("assets/recycle.png", height: 285, width: 285),
      titleTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFF03A9F4),
      title: Text("Reduce"),
      body: Text(
        "Reducing is about to understanding how to not produce trash.",
        style: TextStyle(fontSize: 18),
      ),
      mainImage: Image.asset("assets/reduce.png", height: 285, width: 285),
      titleTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
    ),
    PageViewModel(
      pageColor: const Color(0xFFFEC200),
      title: Text("Reuse"),
      body: Text(
        "Reuse is the action or practice of using an item, whether for its original purpose or to fulfill a different function.",
        style: TextStyle(fontSize: 18),
      ),
      mainImage: Image.asset("assets/reuse.png", height: 285, width: 285),
      titleTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: "BreeSerif", color: Colors.white),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          pageButtonTextSize: 12,
          showNextButton: true,
          showBackButton: true,
          showSkipButton: true,
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
