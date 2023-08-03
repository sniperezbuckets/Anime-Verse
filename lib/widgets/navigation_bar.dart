import "package:flutter/material.dart";

class NavBar extends StatelessWidget {
  const NavBar(
      {super.key, required this.selectedIndex, required this.onTabTapped});

  final int selectedIndex;
  final void Function(int)? onTabTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTabTapped,
      selectedItemColor: Colors.red,
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
    );
  }
}
