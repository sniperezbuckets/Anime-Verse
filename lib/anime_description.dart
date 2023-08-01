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

class _AnimeDescriptionState extends State<AnimeDescription> {
  var currentScreen = 'welcome-screen';

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = const WelcomeScreen();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await Future.delayed(const Duration(seconds: 5));
        setState(() {
          currentScreen = 'menu-screen';
        });
      },
    );

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
