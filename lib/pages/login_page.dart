import 'package:flutter/material.dart';
import 'package:project_mobile/pages/home_page.dart';
import 'package:project_mobile/pages/registrasi_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Login', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
        ),
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
                      prefixIcon: Icon(Icons.email, size: 18),
                      hint: Text("Masukkan Email"),
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 14.0),
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
                      contentPadding: EdgeInsets.symmetric(vertical: 14.0,horizontal: 14.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Lupa Password",
                        style: TextStyle(color: Colors.black,fontSize: 12))
                  ),
                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Belum Punya Akun?"),
                      TextButton(
                        child: Text("Daftar", style: TextStyle(color: Colors.black)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RegistrasiPage()),
                          );
                        },
                      ),
                    ],
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
