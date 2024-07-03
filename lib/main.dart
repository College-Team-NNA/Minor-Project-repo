import 'package:flutter/material.dart';
import 'package:minor_project/HomeScreen.dart';

void main() {
  runApp(const Proj());
}

class Proj extends StatelessWidget {
  const Proj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomeScreen(),
      },
    );
  }
}
