import 'package:anime_description_v1/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/menu_screen.dart';

class AnimeDescription extends StatefulWidget {
  const AnimeDescription({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimeDescriptionState();
  }
}

/*this class manages the screens that need to be dispayed
  When the app starts, the welcome screen is displayed by default.
  After 5 seconds the menu screen is called.
*/
class _AnimeDescriptionState extends State<AnimeDescription> {
  var currentScreen = 'welcome-screen';

  @override
  Widget build(BuildContext context) {
    // default screen
    Widget widgetScreen = const WelcomeScreen();

    // this is a scheduler. It set intruction to display the menu sreen after 5 seconds
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Future.delayed(const Duration(seconds: 5));
        setState(() {
          // after 5 seconds, call the menu screen
          currentScreen = 'menu-screen';
        });
      },
    );

    // check if the menu screen has been called. If yes display the screen.
    if (currentScreen == 'menu-screen') {
      setState(
        () {
          widgetScreen = const MenuScreen();
        },
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: widgetScreen,
      ),
    );
  }
}
