import 'package:flutter/material.dart';
import 'package:flutter_tutorial/model/shop.dart';
import 'package:flutter_tutorial/pages/MenuPage.dart';
import 'package:flutter_tutorial/pages/CartPage.dart';
import 'package:provider/provider.dart';
import 'pages/IntroPage.dart';
import 'package:google_fonts/google_fonts.dart';

// Main
void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context)=>Shop(),
        child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSerifDisplayTextTheme(),
      ),
      home: const IntroPage(),
      routes: {
        "/intropage":(context)=> IntroPage(),
        "/menupage":(context)=> MenuPage(),
        "/cartpage":(context)=> CartPage(),
      },
    );
  }
}
