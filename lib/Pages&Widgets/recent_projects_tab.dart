import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class RecentProjectsTab extends StatefulWidget {
  const RecentProjectsTab({super.key, required this.size});
  final Size size;
  @override
  State<RecentProjectsTab> createState() => _RecentProjectsTabState();
}

class _RecentProjectsTabState extends State<RecentProjectsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
                              borderRadius: BorderRadius.circular(24.0)),
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
    );
  }
}
