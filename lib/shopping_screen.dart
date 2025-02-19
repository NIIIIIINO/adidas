import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  List<Map<String, dynamic>> cartItems = [
    {"name": "Adidas Running Shoes", "price": 120.0, "quantity": 1, "image": "assets/images/shoes.jpg"},
    {"name": "Sports Jacket", "price": 85.0, "quantity": 1, "image": "assets/images/jacket.jpg"},
    {"name": "Gym Shorts", "price": 45.0, "quantity": 1, "image": "assets/images/shorts.jpg"},
  ];

  void _increaseQuantity(int index) {
    setState(() {
      cartItems[index]["quantity"]++;
    });
  }

  void _decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index]["quantity"] > 1) {
        cartItems[index]["quantity"]--;
      } else {
        cartItems.removeAt(index); // ลบออกถ้าจำนวนเหลือ 0
      }
    });
  }

  double _calculateTotal() {
    return cartItems.fold(0, (sum, item) => sum + (item["price"] * item["quantity"]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: cartItems.isEmpty
          ? Center(child: Text("Your cart is empty 🛒", style: TextStyle(fontSize: 18)))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: ListTile(
                          leading: Image.asset(cartItems[index]["image"], width: 50, height: 50, fit: BoxFit.cover),
                          title: Text(cartItems[index]["name"]),
                          subtitle: Text("\$${cartItems[index]["price"]} x ${cartItems[index]["quantity"]}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(icon: Icon(Icons.remove), onPressed: () => _decreaseQuantity(index)),
                              Text("${cartItems[index]["quantity"]}"),
                              IconButton(icon: Icon(Icons.add), onPressed: () => _increaseQuantity(index)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("\$${_calculateTotal().toStringAsFixed(2)}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: เพิ่มฟังก์ชัน Checkout
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text("Checkout", style: TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
