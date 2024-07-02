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
                              height: 115,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Theme_req.piechart_outer,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/bc9e/dea8/b59e91cfa53a4f01c9995fc82559370e?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dyR9WZPAjAFx4sq~0W1eTdXeXdPy7rqBDv1WrywOQFN1hL6Ql7iET~~SSpalDk-StOvrDW2PwfPq7Km6kkZMOYCKmn95kdITwBhRXcJ~WUs3llIir7-zJmSmdm-ZS8zfEW1pl0QIJNhri80V-qqw~Nal~37dzVtSucF6-zKNAbMFBNBXjJyv3WQqkKswNoY4aNGb9AG8aaL1KnuGIJkoRfe4kTp6Q9kcbv2rgOesgbFgmYIUsjIGLEfj7Csug9MJck0-2Zuo5pRb2GUdMpLiBmTA8XrUDuO1Ij7sFdDgqWDaShDiOFeimrFfj1AWuNuq4rXveHnpHt304pkLTzg4VQ__",
                                color: Theme_req.piechart_outer,
                                colorBlendMode: BlendMode.color,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            const Positioned(
                              top: 65, left: 50,
                              right: 50, // Adjust the positioning as needed
                              child: CircleAvatar(
                                radius: 40, // Radius of the CircleAvatar
                                backgroundColor: Theme_req.bio_name,
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
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 270,
                                      height: 160,
                                      decoration: BoxDecoration(
                                          color: Theme_req.offWhite,
                                          borderRadius:
                                              BorderRadius.circular(24.0)),
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
