import 'package:flutter/material.dart';

class GradientColors {
  final List<Color> _gradientColors = const [
    Color.fromARGB(150, 14, 28, 38),
    Color.fromARGB(200, 42, 69, 75),
    Color.fromARGB(250, 41, 72, 97),
  ];

  BoxDecoration get gradientsColors {
    return BoxDecoration(
      gradient: _LGradient(
        colors: _gradientColors,
      ).getLinearGradients(),
    );
  }

  BoxDecoration setGradientsColors(List<Color> colors) {
    return BoxDecoration(
      gradient: _LGradient(
        colors: colors,
      ).getLinearGradients(),
    );
  }
}

class _LGradient {
  _LGradient({required this.colors});

  List<Color> colors;

  LinearGradient getLinearGradients() {
    return LinearGradient(
      colors: colors,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
