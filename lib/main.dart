import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_play_app/utils/utils.dart';
import 'package:google_play_app/views/HomePage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'ProductSans',
      ),
      home: HomePage(),
    );
  }
}
