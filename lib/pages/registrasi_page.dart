import "dart:ui";
import "package:flutter/material.dart";

class RegistrasiPage extends StatelessWidget {
  const RegistrasiPage({super.key});

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

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white,size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [

                       TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, size: 18, color: Colors.white),
                          hintText: "Nama Anda",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        style: TextStyle(color: Colors.white)
                      ),
                      SizedBox(height: 20),

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
                      
                       TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, size: 18, color: Colors.white),
                          hintText: "KonfirmasiPassword",
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        style: TextStyle(color: Colors.white)
                      ),
                      SizedBox(height: 20),


                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: Text("Daftar"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromARGB(255, 177, 20, 9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
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
