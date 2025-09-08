import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> listFilm1 = [
    'assets/images/totoro.jpg',
    'assets/images/howl.png',
    'assets/images/el-viento.jpg',
    'assets/images/ponyo.jpg',
    'assets/images/the-boys.jpeg',
  ];

  final List<String> listFilm2 = [
    'assets/images/tangled.jpeg',
    'assets/images/zootopia.jpeg',
    'assets/images/brave.jpeg',
    'assets/images/frozen.jpg',
    'assets/images/luca.jpg'
  ];

  final List<String> listFilm3 = [
    'assets/images/insideout2.png',
    'assets/images/up.jpg',
    'assets/images/encanto.jpg',
    'assets/images/turningred.jpg',
    'assets/images/onward.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.menu,size: 30, color: const Color.fromARGB(255, 13, 90, 153)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Color.fromARGB(255, 13, 90, 153)),
          ),
        ],

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.grey], 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Container(
                    width: 180,
                    height: 250,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(listFilm1[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
            ), 
            
            SizedBox(height: 15),
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [  
                Text('Now Playing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_forward_ios, size: 15)
              ],
                )
            ),
            ),


            SizedBox(height: 15),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(listFilm2[index], 
                    height: 150,
                    width: 120,
                    fit: BoxFit.fitWidth
                    ),
                   ),
                  );
                }),
              ),
            ), 

            SizedBox(height: 15),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [  
                Text('Upcoming', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_forward_ios, size: 15)
              ],
                )
            ),
            ),

            SizedBox(height: 15),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Container(
                    width: 120,
                    height: 150,
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(listFilm3[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
              ),
            ), 
          ],
        ),
      ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), 
            label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), 
            label: 'Profile'),
        ],
      ),
    );
  }
}
