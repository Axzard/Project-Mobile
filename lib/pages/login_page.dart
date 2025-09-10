import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_mobile/pages/home_page.dart';
import 'package:project_mobile/pages/registrasi_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
       body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), 
            child: Container(
              color: Colors.black.withOpacity(0.3), 
            ),
          ),

          
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [

                      
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email, size: 18, color: Colors.white),
                          hintText: "Masukkan Email",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),

                      
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, size: 18, color: Colors.white),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        style: TextStyle(color: Colors.white)
                      ),
                      SizedBox(height: 20),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Lupa Password?",
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                      ),
                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 177, 20, 9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Belum Punya Akun?",
                              style: TextStyle(color: Colors.white, fontSize: 12)),
                          TextButton(
                            child: Text("Daftar", style: TextStyle(color: Colors.white)),
                            onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrasiPage()));
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
        ],
      ),
    );
  }
}
