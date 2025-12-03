import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFD700),
                Color(0xFFFFB300),
                Color(0xFFFF8C00),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "💎 I AM RICH 💎",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      shadows: [
                        Shadow(
                          blurRadius: 15.0,
                          color: Colors.black54,
                          offset: Offset(3, 3),
                        ),
                        Shadow(
                          blurRadius: 30.0,
                          color: Color(0xFFFFD700),
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 30,
                            offset: Offset(0, 15),
                            spreadRadius: 5,
                          ),
                          BoxShadow(
                            color: Color(0xFFFFD700).withOpacity(0.5),
                            blurRadius: 50,
                            offset: Offset(0, 0),
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage('assets/images/diamonds.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "LUXURY • WEALTH • SUCCESS",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black38,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

