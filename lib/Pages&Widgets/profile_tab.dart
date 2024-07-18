import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:readmore/readmore.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key, required this.size});
  final Size size;

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //Profile Container
            padding: const EdgeInsets.only(left: 7, right: 7, top: 7),
            height: widget.size.height * 0.468,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Stack(
              children: [
                Container(
                  height: widget.size.height * 0.20,
                  width: widget.size.width,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Theme_req.piechart_outer,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Image.network(
                    "https://s3-alpha-sig.figma.com/img/bc9e/dea8/b59e91cfa53a4f01c9995fc82559370e?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ks-zkzQay~pMKP70AqfO0VExNX8LPT7lphsvbp8D6dmLnM7DVF2WfHkYzJWuLbUIK8T-KT5eTxlIsobCpRSfT9-O3LpP6DNQdJrVVP2s31Po4izlohgpXmChXwgnTnd5s3Klj-YiqRfpDxb5UeW2TfTQ-MtAGx2w5EryAA-Bgt-b8D4u2qdDqoX1Apkpu0gf4CDSY1G2kfgtuXRfaCM8LHTeTd0N0PPbPGIUvSmsGaAYHjI9GhnVXUd2zZP0yaCt0INNE7sxxAHabpXn-3nVTPpetMpAnVfQAw1FQgTjrT2gL~AXoElFBbj6RdmK5UXiB-CCPXLJ2lX~Je3dXidoLA__",
                    color: Theme_req.piechart_outer,
                    colorBlendMode: BlendMode.color,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: widget.size.height * 0.118,
                  left: 50,
                  right: 50, // Adjust the positioning as needed
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: widget.size.width *
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
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: WidgetStateProperty.all<double>(0),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Theme_req.follow_btn),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
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
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: WidgetStateProperty.all<double>(0),
                                // backgroundColor:
                                //     MaterialStateProperty.all<
                                //         Color>(Colors.white),
                                side: WidgetStateProperty.all<BorderSide>(
                                    const BorderSide(
                                        color: Theme_req.piechart_outer)),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
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
                      ReadMoreText(
                        "Takimata sit sit ut amet aliquyam vero elitr diam, justo et amet lorem no gubergren est, sea at kasd rebum. Duo amet justo sadipscing sed nonumy. Ipsum sed consetetur lorem voluptua takimata.",
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        colorClickableText: Theme_req.piechart_outer,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        textScaler: TextScaler.linear(1.2),
                        style: GoogleFonts.montserrat(
                            fontSize: Theme_req.stxt_size),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Container(
            //Information Container
            constraints: const BoxConstraints(maxHeight: 550),
            padding: Theme_req.defaultPadding_navBar,
            height: widget.size.height * .25,
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
                          fontSize: Theme_req.mtxt_size),
                    ),
                    const Spacer(),
                    Text(
                      "www.xyz.com",
                      style: GoogleFonts.montserrat(
                          color: Theme_req.black,
                          fontWeight: FontWeight.w500,
                          fontSize: Theme_req.mtxt_size),
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
                          fontSize: Theme_req.mtxt_size),
                    ),
                    const Spacer(),
                    Text(
                      "jhaarya1002@gmail.com",
                      style: GoogleFonts.montserrat(
                          color: Theme_req.black,
                          fontWeight: FontWeight.w500,
                          fontSize: Theme_req.mtxt_size),
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
                          fontSize: Theme_req.mtxt_size),
                    ),
                    const Spacer(),
                    Text(
                      "+91 8750728921",
                      style: GoogleFonts.montserrat(
                          color: Theme_req.black,
                          fontWeight: FontWeight.w500,
                          fontSize: Theme_req.mtxt_size),
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
                          fontSize: Theme_req.mtxt_size),
                    ),
                    const Spacer(),
                    Text(
                      "13 July 2015",
                      style: GoogleFonts.montserrat(
                          color: Theme_req.black,
                          fontWeight: FontWeight.w500,
                          
                          fontSize: Theme_req.mtxt_size),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.02,
          ),
          Container(
            //Contact Me Container
            padding: Theme_req.defaultPadding_navBar,
            constraints: const BoxConstraints(maxHeight: 145),
            height: widget.size.height * 0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Column(
              children: [
                Text(
                  "Contact me",
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
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Theme_req.follow_btn,
                        size: 30,
                      ),
                      // Spacer(),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Theme_req.follow_btn,
                        size: 30,
                      ),
                      // Spacer(),
                      FaIcon(
                        FontAwesomeIcons.meta,
                        color: Theme_req.follow_btn,
                        size: 30,
                      ),
                      // Spacer(),
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: Theme_req.follow_btn,
                        size: 30,
                      ),
                      // Spacer(),
                      FaIcon(
                        FontAwesomeIcons.behance,
                        color: Theme_req.follow_btn,
                        size: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
