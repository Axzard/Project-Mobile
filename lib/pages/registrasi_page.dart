import "package:flutter/material.dart";

class RegistrasiPage extends StatelessWidget {
  const RegistrasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Registrasi',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, size: 18),
                      hint: Text("Masukan Nama"),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, size: 18),
                      hint: Text("Masukkan Email"),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, size: 18),
                      hint: Text("Password"),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Daftar"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                    ),
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
