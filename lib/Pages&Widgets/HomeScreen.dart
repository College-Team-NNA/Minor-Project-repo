import 'package:flutter/material.dart';
import 'package:minor_project/Pages&Widgets/profile_tab.dart';
import 'package:minor_project/Pages&Widgets/recent_projects_tab.dart';
import 'package:minor_project/Pages&Widgets/status_learning_tab.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar: AppBar(
        backgroundColor: Theme_req.offWhite,
        actions: const [navBar()],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
          child: Row(
            children: [
              Expanded(
                //Full Profile Column 6/19 parts flex
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileTab(size: _size),
                ),
              ),
              Expanded(
                //Statistics Column 4/19 Part flex
                flex: 4,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StatusLearningTab(size: _size)),
              ),
              Expanded(
                flex: 9, //Recent Projects Column 9/19 Parts flex
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecentProjectsTab(size: _size),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
