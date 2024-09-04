import 'package:flutter/material.dart';
import 'package:minor_project/Pages&Widgets/profile_tab.dart';
import 'package:minor_project/Pages&Widgets/recent_projects_tab.dart';
import 'package:minor_project/Pages&Widgets/status_learning_tab.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    // Size _size = MediaQuery.of(context).size;
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
                flex: 26,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileTab(size: MediaQuery.of(context).size),
                ),
              ),
              Expanded(
                //Statistics Column 4/19 Part flex
                flex: 45,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        StatusLearningTab(size: MediaQuery.of(context).size)),
              ),
              Expanded(
                flex: 27, //Recent Projects Column 9/19 Parts flex
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RecentProjectsTab(size: MediaQuery.of(context).size),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(8))),
        onPressed: () => Navigator.pushNamed(context, "/underconstruction"),
        backgroundColor: Theme_req.follow_btn.withOpacity(0.8),
        child: Transform.flip(
          flipX: true,
          child: const Icon(
            Icons.menu,
            size: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
