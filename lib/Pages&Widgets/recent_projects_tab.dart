import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

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
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 16 / 10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: Theme_req.offWhite,
                  ),
                  clipBehavior: Clip.antiAlias,
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(34)),
                    clipBehavior: Clip.antiAlias,
                    child: FutureBuilder(
                      future: (index % 2 == 0) ? link("1.png") : link("2.png"),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Image.network(
                            snapshot.data.toString(),
                            fit: BoxFit.cover,
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
