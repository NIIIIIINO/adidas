import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset('/images/promotions.jpg', fit: BoxFit.cover),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.directions_walk),
                title: Text("SHOES"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.checkroom),
                title: Text("CLOTHING"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text("ACCESSORIES"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.5,
                  children: [
                    CategoryButton(title: 'SALE', icon: Icons.percent),
                    CategoryButton(title: 'SPORT', icon: Icons.sports),
                    CategoryButton(title: 'NEW & TRENDING', icon: Icons.local_fire_department),
                    CategoryButton(title: 'GIFT CARDS', icon: Icons.card_giftcard),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  CategoryButton({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200]),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black),
          SizedBox(width: 8),
          Text(title, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}