
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
    'assets/images/luca.jpg',
  ];

  final CategoryList = ['Action','Adventure','Comedy','Drama','Fantasy','Horror','Romance','Thriller'];

  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: !_isSearching
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              )
            : null,
        title: !_isSearching
            ? null
            : Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF415A77),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: TextField(
                    controller: _searchController,
                    autofocus: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Ketik untuk mencari",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 12),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    onChanged: (value) {
                      print("User mengetik: $value");
                    },
                  ),
                ),
              ),

        actions: [
          _isSearching
              ? TextButton(
                  onPressed: () {
                    setState(() {
                      _isSearching = false;
                      _searchController.clear();
                    });
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    setState(() {
                      _isSearching = true;
                    });
                  },
                ),
        ],

        backgroundColor: Color(0xFF0D1B2A),
      ),

      backgroundColor: Color(0xFF0D1B2A),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),

                  
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          width: 180,
                          height: 250,
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(10),
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

                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Categori",
                      style: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 40, 
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: CategoryList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF415A77),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text(
                            CategoryList[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      },
                    )
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                          width: 180,
                          height: 250,
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(listFilm2[index]),
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
        ],
      ),
    );
  }
}
