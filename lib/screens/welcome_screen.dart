import 'package:anime_description_v1/decorations/background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anime_description_v1/decorations/gradient_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({delay = 3, super.key});

  @override
  State<StatefulWidget> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(context) {
    return BackGround(
      decoration: GradientColors().gradientsColors,
      padding: const EdgeInsets.only(top: 200),
      child: Center(
        child: Column(
          children: [
            Text(
              'Welcome To The Anime World',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Everything you need to know in one place',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 200,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
