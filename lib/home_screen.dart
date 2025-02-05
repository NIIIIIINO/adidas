import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SHOP',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outline),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // Search Bar
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                  bottom: BorderSide(color: Color.fromARGB(255, 240, 240, 240)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  Text(
                    "Find product",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      color: Colors.grey.shade400,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),

            // Category Bar (Men, Women, Kids)
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Men  Women  Kids",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Image.asset(
                    '../assets/image/quiz-logo.png',
                  width: 50,
                  color: Colors.white.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
