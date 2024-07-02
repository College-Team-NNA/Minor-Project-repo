import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/navBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        backgroundColor: Theme_req.offWhite,
        actions: const [navBar()],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 10),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 7, right: 7, top: 7),
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Theme_req.piechart_outer,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            Positioned(
                              top: 25, left: 50,
                              right: 50, // Adjust the positioning as needed
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 35, // Radius of the CircleAvatar
                                    backgroundColor: Theme_req.bio_name,
                                  ),
                                  Text(
                                    "@aryajha",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Arya Jha",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "Flutter Developer",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 26,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Theme_req.follow_btn),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Curved corners
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "FOLLOW",
                                              style: GoogleFonts.montserrat(
                                                  color: Theme_req.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          width: 120,
                                          height: 26,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8), // Curved corners
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "Edit Profile",
                                              style: GoogleFonts.montserrat(
                                                  color: Theme_req.follow_btn,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "sdfgdrgdfkjnskjfhjfbdvzdnbgrdjrbnzzvbdjhgbjdfbzdvjhzdbjfbzdjbgfdjhfjzvndbhjzbndfnuhfzjskdnfkjsgfjzbdjfzsdgefjzbdvdgfgusbdfnvvbzsgfhbzdjbvdvrdg",
                                    maxLines: 3,
                                    style: GoogleFonts.montserrat(fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: Theme_req.defaultPadding_navBar,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Information",
                              style: GoogleFonts.montserrat(
                                  color: Theme_req.bio_name,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            const Divider(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.language,
                                  color: Theme_req.info_tag_title,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Website",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                const Spacer(),
                                Text(
                                  "www.xyz.com",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: Theme_req.info_tag_title,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Email",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                const Spacer(),
                                Text(
                                  "jhaarya1002@gmail.com",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone_outlined,
                                  color: Theme_req.info_tag_title,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Phone",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                const Spacer(),
                                Text(
                                  "+91 8750728921",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month_sharp,
                                  color: Theme_req.info_tag_title,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Joined",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                const Spacer(),
                                Text(
                                  "13 July 2015",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: Theme_req.defaultPadding_navBar,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Contact me at",
                              style: GoogleFonts.montserrat(
                                  color: Theme_req.bio_name,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            const Divider(),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 50.0, right: 50, top: 20, bottom: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: Theme_req.follow_btn,
                                  ),
                                  Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Theme_req.follow_btn,
                                  ),
                                  Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Theme_req.follow_btn,
                                  ),
                                  Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Theme_req.follow_btn,
                                  ),
                                  Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.behance,
                                    color: Theme_req.follow_btn,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Hello, World!',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Hello, World!',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(35),
                        height: 155,
                        decoration: BoxDecoration(
                          color: Theme_req.follow_btn,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
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
                                radius: 23,
                                child: IconButton(
                                  icon: const FaIcon(
                                    FontAwesomeIcons.play,
                                    size: 20,
                                  ), // Your icon
                                  color: Theme_req.follow_btn, // Icon color
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 9,
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
                                    fontSize: 20),
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                                          height: 160,
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
