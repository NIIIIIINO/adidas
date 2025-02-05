import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text(
          data : 'SHOP',
          style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 
          ),
          
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon: Icon.person_outline),
                ),
            )
          ],
      ),
      )
    );
  }


}