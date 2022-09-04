import 'package:flutter/material.dart';
//import 'package:graphidex/greetings/getstarted.dart';
import 'greetings/getstarted.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GetStarted(),
    );
  }
}
