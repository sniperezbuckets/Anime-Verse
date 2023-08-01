import 'package:flutter/cupertino.dart';

import 'gradient_colors.dart';
import 'image.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    required this.child,
    this.decoration,
    this.padding,
    super.key,
  });

  final Widget? child;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ImageWidget(),
        Container(
          decoration: GradientColors().setGradientsColors(
            const [
              Color.fromARGB(240, 14, 28, 38),
              Color.fromARGB(240, 42, 69, 75),
              Color.fromARGB(240, 41, 72, 97),
            ],
          ),
          padding: padding,
          child: child,
        ),
      ],
    );
  }
}
