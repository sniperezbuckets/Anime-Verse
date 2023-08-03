import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
