import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1A1A2E),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF16213E),
          elevation: 0,
        ),
      ),
      home: LoadingScreen(),
    );
  }
}

