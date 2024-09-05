import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';
import 'package:readmore/readmore.dart';

class ProfileVisitorView extends StatelessWidget {
  const ProfileVisitorView({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonstyle = ButtonStyle(
        shape: WidgetStateProperty.all(const CircleBorder()),
        side: WidgetStateProperty.all(BorderSide(color: Color(0xffe7e7e9))));
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar:
          AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 80),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ReadMoreText(
                          "Explore Japan: A User-Centric Tourism Experience ",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 60),
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.2)
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        // child: FutureBuilder(
                        //   future: link(""),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.connectionState == ConnectionState.done) {
                        //       return Image.network(snapshot.data.toString());
                        //     }
                        //     return const SizedBox();
                        //   },
                        // ),
                      ),
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
                        icon: Icon(
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
                        icon: Icon(
                          FontAwesomeIcons.bookmark,
                          color: Color(0xff9688e9),
                          size: 24,
                        ),
                        style: buttonstyle,
                      ),
                      const SizedBox(width: 15),
                      TextButton(
                        onPressed: () {},
                        child: Text("Get in Touch"),
                        style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
