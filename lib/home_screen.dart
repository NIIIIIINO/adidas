import 'package:adidas/adiclub_screen.dart';
import 'package:adidas/adidas_screen.dart';
import 'package:adidas/favorites_screen.dart';
import 'package:adidas/search_screen.dart';
import 'package:adidas/shopping_screen.dart';
import 'package:flutter/material.dart';

class  HomeScreen extends StatefulWidget{
   @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void ontemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

final Map<int, Map<String, Widget>> _navigationMap = {
  0: {"title": const Text("Home"), "screen": AdidasScreen()},
  1: {"title": const Text("Search"), "screen": SearchScreen()},
  2: {"title": const Text("Favorites"), "screen": FavoritesScreen()},
  3: {"title": const Text("Cart"), "screen": ShoppingScreen()},
  4: {"title": const Text("AdiClub"), "screen": AdiclubScreen()},
};
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Find products...',
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.black),
            ),
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [IconButton(icon: Icon(Icons.person, color: Colors.black), onPressed: () {})],
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: "WOMEN"),
              Tab(text: "MEN"),
              Tab(text: "KIDS"),
            ],
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: ontemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Image.asset("assets/icons/logo.png", width: 30, height: 30), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(icon: Image.asset("assets/icons/adiclub.png", width: 45, height: 45), label: ""),
          ],
        ),
      ),
    );
  }
}


