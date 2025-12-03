import 'package:flutter/material.dart';
import 'package:flutter_vku_lab9/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0D0D1E),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1C1E2C),
          elevation: 0,
        ),
      ),
      home: LoadingScreen(),
    );
  }
}

