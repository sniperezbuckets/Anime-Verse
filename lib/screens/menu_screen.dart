import 'package:anime_description_v1/screens/all_screen.dart';
import 'package:anime_description_v1/screens/favorite_screen.dart';
import 'package:anime_description_v1/screens/home_screen.dart';
import 'package:anime_description_v1/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MenuScreenState();
  }
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    AllScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(248, 24, 24, 24),
        title: Text(
          'AnimeVerse Beta V_0.0.10',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(248, 24, 24, 24),
        width: 250,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 70,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(248, 24, 24, 24),
                ),
                child: Text(
                  'Menu Header',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add functionality to handle 'Home' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add functionality to handle 'Settings' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Colors.grey,
              ),
              title: const Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Add functionality to handle 'About' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.red, // Customize the color for selected item
        // unselectedItemColor:
        //     Colors.black, // Customize the color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(248, 24, 24, 24),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'Search',
            backgroundColor: Color.fromARGB(248, 24, 24, 24),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.grey,
            ),
            label: 'Favorite',
            backgroundColor: Color.fromARGB(248, 24, 24, 24),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.grey,
            ),
            label: 'All',
            backgroundColor: Color.fromARGB(248, 24, 24, 24),
          ),
        ],
      ),
    );
  }
}
