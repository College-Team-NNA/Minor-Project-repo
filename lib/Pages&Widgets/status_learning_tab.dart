import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class StatusLearningTab extends StatefulWidget {
  const StatusLearningTab({super.key,required this.size });
  final Size size;
  @override
  State<StatusLearningTab> createState() => _StatusLearningTabState();
}

class _StatusLearningTabState extends State<StatusLearningTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: widget.size.height * 0.26,
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
    );
  }
}
