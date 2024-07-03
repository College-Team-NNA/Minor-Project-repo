import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
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
                        height: MediaQuery.of(context).size.height * 0.468,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              width: MediaQuery.of(context).size.width,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Theme_req.piechart_outer,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/bc9e/dea8/b59e91cfa53a4f01c9995fc82559370e?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dyR9WZPAjAFx4sq~0W1eTdXeXdPy7rqBDv1WrywOQFN1hL6Ql7iET~~SSpalDk-StOvrDW2PwfPq7Km6kkZMOYCKmn95kdITwBhRXcJ~WUs3llIir7-zJmSmdm-ZS8zfEW1pl0QIJNhri80V-qqw~Nal~37dzVtSucF6-zKNAbMFBNBXjJyv3WQqkKswNoY4aNGb9AG8aaL1KnuGIJkoRfe4kTp6Q9kcbv2rgOesgbFgmYIUsjIGLEfj7Csug9MJck0-2Zuo5pRb2GUdMpLiBmTA8XrUDuO1Ij7sFdDgqWDaShDiOFeimrFfj1AWuNuq4rXveHnpHt304pkLTzg4VQ__",
                                color: Theme_req.piechart_outer,
                                colorBlendMode: BlendMode.color,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height * 0.118,
                              left: 50,
                              right: 50, // Adjust the positioning as needed
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: MediaQuery.of(context).size.width *
                                        0.03, // Radius of the CircleAvatar
                                    backgroundColor: Theme_req.bio_name,
                                    child: Image.asset(
                                      "assets/Vector.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    "@aryajha",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w500,
                                        fontSize: Theme_req.mtxt_size),
                                  ),
                                  Text(
                                    "Arya Jha",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w700,
                                        fontSize: Theme_req.ltxt_size),
                                  ),
                                  Text(
                                    "Flutter Developer",
                                    style: GoogleFonts.montserrat(
                                        color: Theme_req.bio_name,
                                        fontWeight: FontWeight.w600,
                                        fontSize: Theme_req.stxt_size),
                                  ),
                                  const Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                WidgetStateProperty.all<double>(
                                                    0),
                                            backgroundColor:
                                                WidgetStateProperty.all<Color>(
                                                    Theme_req.follow_btn),
                                            shape: WidgetStateProperty.all<
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
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                WidgetStateProperty.all<double>(
                                                    0),
                                            // backgroundColor:
                                            //     MaterialStateProperty.all<
                                            //         Color>(Colors.white),
                                            side: WidgetStateProperty.all<
                                                    BorderSide>(
                                                const BorderSide(
                                                    color: Theme_req
                                                        .piechart_outer)),
                                            shape: WidgetStateProperty.all<
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
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const ReadMoreText(
                                    "A pasod dnasljds okisjdasdnawjlkd oiasjdajdjndjencejdfeqwfjd kasjnewnddewjkbhdvdsjicnadjshasjkdfdahd  dhfasdjkfdsbdsjk djkhds sklsdndjkvcncjcdjkn ",
                                    trimMode: TrimMode.Line,
                                    trimLines: 2,
                                    colorClickableText:
                                        Theme_req.piechart_outer,
                                    trimCollapsedText: 'Show more',
                                    trimExpandedText: 'Show less',
                                    textScaler: TextScaler.linear(1.2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        constraints: const BoxConstraints(maxHeight: 550),
                        padding: Theme_req.defaultPadding_navBar,
                        height: MediaQuery.of(context).size.height * .25,
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
                                  fontSize: Theme_req.Heading_size),
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
                                      fontSize: Theme_req.stxt_size),
                                ),
                                const Spacer(),
                                Text(
                                  "www.xyz.com",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Theme_req.stxt_size),
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
                                      fontSize: Theme_req.stxt_size),
                                ),
                                const Spacer(),
                                Text(
                                  "jhaarya1002@gmail.com",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Theme_req.stxt_size),
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
                                      fontSize: Theme_req.stxt_size),
                                ),
                                const Spacer(),
                                Text(
                                  "+91 8750728921",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Theme_req.stxt_size),
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
                                      fontSize: Theme_req.stxt_size),
                                ),
                                const Spacer(),
                                Text(
                                  "13 July 2015",
                                  style: GoogleFonts.montserrat(
                                      color: Theme_req.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: Theme_req.stxt_size),
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        padding: Theme_req.defaultPadding_navBar,
                        constraints: const BoxConstraints(maxHeight: 145),
                        height: MediaQuery.of(context).size.height * 0.13,
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
                                  fontSize: Theme_req.Heading_size),
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 8,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 60.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: Theme_req.follow_btn,
                                    size: 35,
                                  ),
                                  // Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Theme_req.follow_btn,
                                    size: 35,
                                  ),
                                  // Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Theme_req.follow_btn,
                                    size: 35,
                                  ),
                                  // Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Theme_req.follow_btn,
                                    size: 35,
                                  ),
                                  // Spacer(),
                                  FaIcon(
                                    FontAwesomeIcons.behance,
                                    color: Theme_req.follow_btn,
                                    size: 35,
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
                        height: MediaQuery.of(context).size.height * 0.26,
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
                            'Hello, World!',
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
