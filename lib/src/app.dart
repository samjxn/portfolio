import 'package:flutter/material.dart';
import 'package:portfolio/src/ui/screens/home/home_screen.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sam Jackson',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Comfortaa',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 64.0,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Garamond',
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Garamond',
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
