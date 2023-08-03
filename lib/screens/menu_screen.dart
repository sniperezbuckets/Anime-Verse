import 'package:anime_description_v1/screens/all_screen.dart';
import 'package:anime_description_v1/screens/favorite_screen.dart';
import 'package:anime_description_v1/screens/home_screen.dart';
import 'package:anime_description_v1/screens/search_screen.dart';
import 'package:anime_description_v1/widgets/app_bar.dart';
import 'package:anime_description_v1/widgets/hamburger_menu.dart';
import 'package:anime_description_v1/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MenuScreenState();
  }
}

/*This is how the menu screen looks like. It is composed of a appbar, navbar and hamburger menu.
The appbar has his own class as well as the nav bar and the hamburger menu. 
A simple logic here is applied to connect the external classes with this
 class that are necessecary for the navbar to work*/

class _MenuScreenState extends State<MenuScreen> {
  // navbar current (default) index
  int selectedIndex = 0;

  // list of screens to be displayed when a navbar item is tapped (works whith the navbar in-built index)
  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    AllScreen(),
  ];

  // fucntion to handle the screens to be displayed. the current in-built navbar index value will
  // be get by selectedIndex to know which screen in the list of screen to be displayed when an item is tapped
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(),
        drawer: const HamburgerMenu(),
        body: screens[selectedIndex],
        bottomNavigationBar: NavBar(
          selectedIndex: selectedIndex,
          onTabTapped: onTabTapped,
        ));
  }
}
