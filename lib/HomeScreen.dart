import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20files/profile_tab.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/navBar.dart';

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: _size.height * 0.26,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Activity Graph (In Progress)',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.42,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Progress Bar (In Progress)',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                        ),
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          color: Theme_req.follow_btn,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28.0),
                          child: Column(
                            children: [
                              Center(
                                  child: Text(
                                "Continue Learning",
                                style: GoogleFonts.montserrat(
                                    color: Theme_req.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  backgroundColor: Theme_req.white,
                                  radius: 21,
                                  child: IconButton(
                                    icon: const FaIcon(
                                      FontAwesomeIcons.play,
                                      size: 18,
                                    ), // Your icon
                                    color: Theme_req.follow_btn, // Icon color
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9, //Recent Projects Column 9/19 Parts flex
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, top: 20, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24.0)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Recent Projects",
                              style: GoogleFonts.montserrat(
                                  color: Theme_req.bio_name,
                                  fontWeight: FontWeight.w600,
                                  fontSize: Theme_req.Heading_size),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.file_upload_outlined,
                                  color: Theme_req.follow_btn,
                                  size: 35,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        // width:270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        // width:270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 270,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: Theme_req.offWhite,
                                            borderRadius:
                                                BorderRadius.circular(24.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
