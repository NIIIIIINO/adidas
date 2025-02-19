import 'package:flutter/material.dart';

class AdiclubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("AdiClub", style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ส่วนบน แสดงข้อมูลสมาชิก
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/profile.jpg"), // เปลี่ยนเป็นรูปสมาชิก
                ),
                SizedBox(height: 10),
                Text(
                  "John Doe", // เปลี่ยนเป็นชื่อสมาชิกจริง
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "AdiClub Level 3 - 1,250 Points",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Text("View Rewards", style: TextStyle(color: Colors.black)),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          
          // เมนูทางลัด
          Expanded(
            child: ListView(
              children: [
                _buildMenuItem(Icons.card_giftcard, "Rewards", context),
                _buildMenuItem(Icons.history, "History", context),
                _buildMenuItem(Icons.settings, "Settings", context),
                _buildMenuItem(Icons.help_outline, "Help & Support", context),
                _buildMenuItem(Icons.logout, "Logout", context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        // สามารถเพิ่ม Navigator.push เพื่อไปหน้าต่างๆ ได้
      },
    );
  }
}
