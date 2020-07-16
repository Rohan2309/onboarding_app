import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp((new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    )));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 1,
      backgroundColor: Colors.black,
      image: Image.asset('assets/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
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
