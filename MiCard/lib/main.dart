import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF8E2DE2),
                Color(0xFF4A00E0),
                Color(0xFFDA22FF),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 30,
                        offset: Offset(0, 10),
                      ),
                      BoxShadow(
                        color: Color(0xFFDA22FF).withOpacity(0.5),
                        blurRadius: 40,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 56.0,
                      backgroundImage: AssetImage('assets/images/bien4_f.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Bùi Minh Đức',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 42.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black45,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                Text(
                  'MOBILE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18.0,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.white.withOpacity(0.5),
                    thickness: 1,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '+84 329 471 427',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'ducbm.21it@vku.udn.vn',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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

