import 'package:flutter/material.dart';
import 'package:flutter1v2/screens/homepage.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: GoogleFonts.aclonicaTextTheme(
      //     Theme.of(context).textTheme
      //   ),
      // ),
      home: Homepage(),


    );
  }
}
