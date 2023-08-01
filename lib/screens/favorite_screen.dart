import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FavoriteScreenState();
  }
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(250, 15, 15, 15),
    );
  }
}
