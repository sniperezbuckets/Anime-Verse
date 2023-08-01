import 'package:anime_description_v1/screens/all_screen.dart';
import 'package:anime_description_v1/decorations/background.dart';
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
        backgroundColor: const Color.fromARGB(255, 41, 72, 97),
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
        backgroundColor: const Color.fromARGB(255, 41, 72, 97),
        width: 250,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 70,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 41, 72, 97),
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
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Add functionality to handle 'Home' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Add functionality to handle 'Settings' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                // Add functionality to handle 'About' item tap here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: BackGround(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.blue, // Customize the color for selected item
        unselectedItemColor:
            Colors.black, // Customize the color for unselected items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 41, 72, 97),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 41, 72, 97),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorite',
            backgroundColor: Color.fromARGB(255, 41, 72, 97),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'All',
            backgroundColor: Color.fromARGB(255, 41, 72, 97),
          ),
        ],
      ),
    );
  }
}
