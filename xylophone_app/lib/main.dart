import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget buildKey({
    required int noteNumber,
    required List<Color> gradientColors,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: gradientColors,
            ),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: gradientColors[0].withOpacity(0.5),
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                final player = AudioCache();
                player.play('sounds/note$noteNumber.wav');
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'NOTE $noteNumber',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black45,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF2C3E50),
                Color(0xFF3498DB),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    '🎵 XYLOPHONE 🎵',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 3,
                      shadows: [
                        Shadow(
                          blurRadius: 15.0,
                          color: Colors.black45,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildKey(
                        noteNumber: 1,
                        gradientColors: [Color(0xFFFF6B6B), Color(0xFFEE5A6F)],
                      ),
                      buildKey(
                        noteNumber: 2,
                        gradientColors: [Color(0xFFFF8E53), Color(0xFFFE6B8B)],
                      ),
                      buildKey(
                        noteNumber: 3,
                        gradientColors: [Color(0xFFFECA57), Color(0xFFFF9FF3)],
                      ),
                      buildKey(
                        noteNumber: 4,
                        gradientColors: [Color(0xFF48C6EF), Color(0xFF6F86D6)],
                      ),
                      buildKey(
                        noteNumber: 5,
                        gradientColors: [Color(0xFF4FACFE), Color(0xFF00F2FE)],
                      ),
                      buildKey(
                        noteNumber: 6,
                        gradientColors: [Color(0xFF667EEA), Color(0xFF764BA2)],
                      ),
                      buildKey(
                        noteNumber: 7,
                        gradientColors: [Color(0xFFA8EDEA), Color(0xFFFED6E3)],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'TAP ANY KEY TO PLAY',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

