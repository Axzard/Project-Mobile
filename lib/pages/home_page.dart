import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
        ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.black),
              hint: Text("Cari", style: TextStyle(color: Colors.black,fontSize: 16)),
              hintStyle: TextStyle(color: Colors.black),
              contentPadding: EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.black),
        )],
      ),

      body: Center(
        child: Text('Selamat Datang', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
      ),
    );
  }
}