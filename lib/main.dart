import 'package:flutter/material.dart';
import 'package:minor_project/HomeScreen.dart';

void main() {
  runApp(Proj());
}

class Proj extends StatelessWidget {
  const Proj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeScreen(),
      },
    );
  }
}