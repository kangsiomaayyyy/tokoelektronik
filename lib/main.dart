import 'package:flutter/material.dart';
import 'package:mental_app/pages/cuci_page.dart';
import 'package:mental_app/pages/setrika_page.dart';
import 'package:mental_app/pages/home_page.dart';
import 'package:mental_app/pages/ac_page.dart';
import 'package:mental_app/pages/tv_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/action': (context) => TvPage(),
        '/isekai': (context) => AcPage(),
        '/fantasy': (context) => CuciPage(),
        '/game': (context) => SetrikaPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
