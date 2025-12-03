import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1a1a2e),
              Color(0xFF16213e),
              Color(0xFF0f3460),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  '🔮 MAGIC 8 BALL 🔮',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFe94560),
                    letterSpacing: 3,
                    shadows: [
                      Shadow(
                        blurRadius: 20.0,
                        color: Color(0xFFe94560),
                        offset: Offset(0, 0),
                      ),
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: Ball()),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'TAP THE BALL TO REVEAL YOUR FATE',
                  textAlign: TextAlign.center,
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
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> with SingleTickerProviderStateMixin {
  int ballNumber = 1;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _rotateAnimation = Tween<double>(begin: 0, end: 0.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
          _controller.forward().then((_) => _controller.reverse());
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Transform.rotate(
                angle: _rotateAnimation.value,
                child: Container(
                  margin: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFe94560).withOpacity(0.6),
                        blurRadius: 60,
                        spreadRadius: 20,
                      ),
                      BoxShadow(
                        color: Color(0xFF0f3460),
                        blurRadius: 30,
                        offset: Offset(0, 20),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset('assets/images/ball$ballNumber.png'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

