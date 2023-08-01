import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, this.fileName = 'all-anime.jpg'});

  final String fileName;

  @override
  Widget build(context) {
    return Image.asset(
      'assets/images/$fileName',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
