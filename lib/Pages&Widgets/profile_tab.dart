import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';
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
    return SizedBox(
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
                  child: FutureBuilder(
                      future: link("Rectangle 4164.png"),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Image.network(
                            snapshot.data.toString(),
                            color: Theme_req.piechart_outer,
                            colorBlendMode: BlendMode.color,
                            fit: BoxFit.cover,
                          );
                        } else if (snapshot.hasError) {
                          return Center(
                              child: Text("Error : ${snapshot.error}"));
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      }),
                ),
                Positioned(
                  top: widget.size.height * 0.118,
                  left: 50,
                  right: 50, // Adjust the positioning as needed
                  child: Column(
                    children: [
                      FutureBuilder(
                          future: link("3dmodel 1.png"),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData && snapshot.data == null) {
                              return const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: CircularProgressIndicator(),
                              );
                            }
                            return CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.03,
                              backgroundColor: Theme_req.bio_name,
                              backgroundImage:
                                  NetworkImage(snapshot.data.toString()),
                            );
                          }),
                      Text(
                        "@itsnemo",
                        style: GoogleFonts.montserrat(
                            color: Theme_req.bio_name,
                            fontWeight: FontWeight.w500,
                            fontSize: Theme_req.mtxt_size),
                      ),
                      Text(
                        "Naman Dixit",
                        style: GoogleFonts.montserrat(
                            color: Theme_req.bio_name,
                            fontWeight: FontWeight.w900,
                            fontSize: Theme_req.ltxt_size),
                      ),
                      Text(
                        "UI/UX Designer",
                        style: GoogleFonts.montserrat(
                            color: Theme_req.bio_name,
                            fontWeight: FontWeight.w600,
                            fontSize: Theme_req.stxt_size),
                      ),
                      const SizedBox(height: 5),
                      OutlinedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, "/editprofile"),
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all(
                              const Size.fromHeight(40)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                          side: WidgetStateProperty.all(
                              const BorderSide(color: Theme_req.follow_btn)),
                        ),
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Theme_req.follow_btn),
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                              "Naman Dixit known affectionately as Nemo, a 21-year-old Frontend Developer, UI/UX designer, and Graphic Designer from India. Driven by the ideology \"I can be better than them\", Nemo strives for excellence in  every project. Nemo is passionate about creating Visually appealing and User-Friendly digital experiences.",
                              textScaler: const TextScaler.linear(1.3),
                              style: GoogleFonts.montserrat(
                                  fontSize: Theme_req.stxt_size),
                            ),
                          ),
                        ),
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
                      "namandixit518@gmail.com",
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
                      "+91 9643200089",
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
            padding:
                const EdgeInsets.only(top: 6, left: 30, right: 30, bottom: 2),
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
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContactButton(context, FontAwesomeIcons.linkedin,
                          'https://www.linkedin.com/in/itsnemo/'),
                      ContactButton(context, FontAwesomeIcons.instagram,
                          "https://www.instagram.com/its.nemo.art/"),
                      ContactButton(context, FontAwesomeIcons.meta, ""),
                      ContactButton(context, FontAwesomeIcons.github,
                          "https://github.com/dixitnaman"),
                      ContactButton(context, FontAwesomeIcons.behance,
                          "https://www.behance.net/namandixit"),
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

Widget ContactButton(BuildContext context, icon, url) {
  return IconButton(
    style: nosplashstyle,
    icon: FaIcon(
      icon,
      color: Theme_req.follow_btn,
      size: 30,
    ),
    onPressed: () => weblauncher(url),
  );
}
