// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
// creating List of Slide objects
// to store data of all intro slides
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    // initializing slides at
    // the runtime of app

    slides.add(
      new Slide(
        title: "GraphiDex",
        maxLineTitle: 2,
        styleTitle: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description: "Welcome to GraphiDex. A Newspaper distribution platform",
        styleDescription: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        marginDescription:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        backgroundImage: "asset/images/icon1.png",
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );

    slides.add(
      new Slide(
        title: "Second Slide",
        styleTitle: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description: "Do video call anywhere anytime with this app.",
        styleDescription: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        backgroundImage: "asset/images/icon1.png",
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );

    slides.add(
      new Slide(
        title: "Third Slide",
        styleTitle: TextStyle(
          color: Colors.red,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description: "Now track the location with this app easily.",
        styleDescription: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        backgroundImage: "asset/images/icon1.png",
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: TextButton(
          onPressed: () {},
          child: Text(
            "Skip",
            style: TextStyle(fontSize: 20),
          )),

      // Next button
      renderNextBtn: Icon(
        Icons.navigate_next,
        color: Colors.white,
        size: 40.0,
      ),
      // Done button
      renderDoneBtn: TextButton(
          onPressed: () {},
          child: Text("Done", style: TextStyle(fontSize: 20))),

      // Dot indicator
      colorDot: Colors.white,
      colorActiveDot: Colors.red,
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      backgroundColorAllSlides: Colors.black,

      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
