import 'package:flutter/material.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/AppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar: AppBar(
        actions: const [AppBars()],
      ),
      body: const Center(),
    );
  }
}
