import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';
import 'package:readmore/readmore.dart';

class ProfileVisitorView extends StatelessWidget {
  const ProfileVisitorView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tagslist = [
      "Tourism",
      "UI",
      "Figma",
      "Prototyping",
      "Interface",
      "Photoshop"
    ];
    final buttonstyle = ButtonStyle(
        shape: WidgetStateProperty.all(const CircleBorder()),
        side: WidgetStateProperty.all(
            const BorderSide(color: Color(0xffe7e7e9))));
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar:
          AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 40),
                  ReadMoreText(
                    "Explore Japan: A User-Centric Tourism Experience ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 75, height: 1.2),
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      FutureBuilder(
                          future: link("pfp1.png"),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData && snapshot.data == null) {
                              return const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: CircularProgressIndicator(),
                              );
                            }
                            return CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.025,
                              backgroundImage: NetworkImage(
                                snapshot.data.toString(),
                              ),
                            );
                          }),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Naman Dixit",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          Text(
                            "UI/UX Designer",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300, fontSize: 20),
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        padding: const EdgeInsets.all(18),
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.heart,
                          color: Color(0xff9688e9),
                          size: 24,
                        ),
                        style: buttonstyle,
                      ),
                      const SizedBox(width: 15),
                      IconButton(
                        padding: const EdgeInsets.all(18),
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.bookmark,
                          color: Color(0xff9688e9),
                          size: 24,
                        ),
                        style: buttonstyle,
                      ),
                      const SizedBox(width: 15),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            backgroundColor:
                                WidgetStateProperty.all(Theme_req.bio_name)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 8),
                          child: Text(
                            "Get in Touch",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 60),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    clipBehavior: Clip.antiAlias,
                    child: FutureBuilder(
                      future: link("1.png"),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Image.network(
                            snapshot.data.toString(),
                            fit: BoxFit.cover,
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                  const SizedBox(height: 50),
                  SelectableText(
                    "About Design",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 65,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SelectableText(
                    "\"Explore Japan\" is an innovative project leveraging Figma's collaborative design platform to craft an immersive and visually captivating user interface for tourists exploring Japan. The project aims to merge the power of Figma's design tools with the essence of Japanese culture to create an engaging digital experience for travelers.",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SelectableText(
                    "Key Features:",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SelectableText(
                    "1. Responsive Design🚀",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    "2. Component Libraries📚",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    "3. Prototype Interactions🤖",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    "4. Collaborative Design Process🙌",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    "5. Accessibility Considerations",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SelectableText(
                    "6. Localization Support",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      SelectableText(
                        "Tools Used: ",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 65,
                        ),
                      ),
                      Brand(
                        Brands.adobe_photoshop,
                        size: 90,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff1f1f27),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Brand(
                          Brands.figma,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  tagsgrid(tagss: tagslist),
                  const SizedBox(height: 50),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    clipBehavior: Clip.antiAlias,
                    child: FutureBuilder(
                      future: link("1.png"),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Image.network(
                            snapshot.data.toString(),
                            fit: BoxFit.cover,
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: Column(
                  children: [
                    Center(
                      child: FutureBuilder(
                        future: link("pfp1.png"),
                        builder: (context, snapshot) {
                          if (!snapshot.hasData && snapshot.data == null) {
                            return const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: CircularProgressIndicator(),
                            );
                          }
                          return CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.05,
                            backgroundImage: NetworkImage(
                              snapshot.data.toString(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "@itsnemo", //username variable to be passed
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Text(
                      "Naman Dixit", //username variable to be passed
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700, fontSize: 40),
                    ),
                    Text(
                      "Just your friendly freelance artist with a bunch of ideas and a knack for creating stunning graphics. Creates both conceptual arts and Web UI",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *
                  0.90, // 70% of screen height
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0), // Adjust as necessary
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "GET\nINSPIRED ",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              fontSize: 60,
                              height: 1,
                              color: Theme_req.white,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 3,
                        left: 230,
                        child: Icon(
                          Icons.auto_awesome,
                          size: 15,
                          color: Theme_req.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.2,
                    // color: const Color(0xFF222222),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF222222)),
                    child: Row(
                      children: [
                        const Expanded(
                            child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            hintText: 'Type to search',
                            hintStyle: TextStyle(
                              color: Color(0xFFACACAC),
                              fontSize: 15.0,
                            ),
                            contentPadding: EdgeInsets.all(15.0),
                            border: InputBorder.none,
                          ),
                        )),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Theme_req.black),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  color: Color(0xFFACACAC),
                                  size: 20,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    "Tip: Search using tags for better results.",
                    style: TextStyle(color: Theme_req.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class tagsgrid extends StatelessWidget {
  const tagsgrid({super.key, required this.tagss});
  final List<String> tagss;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        children: List.generate(tagss.length, (index) {
          return Tags(tag_title: tagss[index].toString());
        }),
      ),
    );
  }
}

class Tags extends StatelessWidget {
  final String tag_title;
  const Tags({super.key, required this.tag_title});

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              overlayColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              side: const BorderSide(color: Theme_req.follow_btn, width: 3),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              enabledMouseCursor: SystemMouseCursors.basic),
          onPressed: () {},
          icon: const Icon(
            Icons.circle,
            color: Theme_req.follow_btn,
            size: 16,
          ),
          label: Text(
            tag_title,
            style: GoogleFonts.poppins(fontSize: 24),
          ),
        ),
      ),
    ]);
  }
}
