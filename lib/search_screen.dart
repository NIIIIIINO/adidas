import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> allProducts = [
    "Adidas Running Shoes",
    "Adidas Ultraboost",
    "Adidas Hoodie",
    "Adidas Backpack",
    "Adidas Tracksuit",
    "Adidas Football",
    "Adidas Socks",
  ];
  List<String> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts;
  }

  void _filterSearch(String query) {
    setState(() {
      filteredProducts = allProducts
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Search products...",
            border: InputBorder.none,
            icon: Icon(Icons.search, color: Colors.black),
          ),
          style: TextStyle(color: Colors.black),
          onChanged: _filterSearch,
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: filteredProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(filteredProducts[index]),
            onTap: () {
              // กดเลือกสินค้าแล้วทำอะไรต่อก็ได้
            },
          );
        },
      ),
    );
  }
}
