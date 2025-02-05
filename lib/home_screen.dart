import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset(
                'assets/images/adidas_logo.png',
                height: 100,
                width: 100,
              ),
              SizedBox(width: 8),
              Text(
                'SHOP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outline, color: Colors.black),
              ),
            )
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            // Row แรก
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFF0F0F0)),
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text(
                    "Find product",
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            // Row ที่สอง
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                  Text(
                    "WOMEN   MEM   KIDS",
                    style: GoogleFonts.lato(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 370,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Image.asset(
                      'assets/images/promotion.png', // รูปภาพเดียว
                      height: 500,
                      width: 600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.category,
                      size: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "SHOES",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.category,
                      size: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "CLOTHING",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xFFF0F0F0)),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.category,
                      size: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "ACCESSORIES",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
