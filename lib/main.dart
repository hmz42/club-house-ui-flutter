import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/screens/home.dart';
import 'constant.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kBackgroundColor),
    scaffoldBackgroundColor:kBackgroundColor,
    primaryColor: Colors.white,
    accentColor: kAccentColor,
            iconTheme: IconThemeData(color: Colors.black),
    buttonTheme: const ButtonThemeData(buttonColor: Colors.black)
    , fontFamily: GoogleFonts.montserrat().fontFamily,
    textTheme: GoogleFonts.montserratTextTheme()
    ),
    title: "Club House",
    home: HomeScreen());
  }

}


