import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
        body: CustomScrollView(
          slivers: [
            // First section: Header and Hero Banner
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.45, // 50% of screen height
                    width: MediaQuery.of(context).size.width,
                    color: Theme_req.offWhite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            RichText(
                              textAlign:
                                  TextAlign.center, // Center-align the text
                              text: TextSpan(
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .copyWith(
                                        color: const Color(
                                            0xFF9489E9)), // Default text color
                                children: [
                                  TextSpan(
                                    text: 'Welcome to\nthe new ',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.none,
                                      fontSize: 60,
                                      height: 1,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'ORIGINS',
                                    style: GoogleFonts.arefRuqaaInk(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF070707),
                                      decoration: TextDecoration.none,
                                      fontSize: 60,
                                      height: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Positioned(
                              top: -2,
                              right: 15,
                              left: 430,
                              child: Icon(
                                Icons.auto_awesome,
                                size: 35,
                                color: Color(0xFF070707),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.2,
                          color: const Color(0xFFE0E0E4),
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
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search))
                            ],
                          ),
                        ),
                        const Text(
                            "Tip: Search using tags for better results."),
                      ],
                    ),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return CustomPaint(
                        size: Size(constraints.maxWidth * 0.7,
                            7), // 70% of screen width
                        painter: TaperedDividerPainter(),
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    height: MediaQuery.of(context).size.height *
                        0.5, // 50% of screen height
                    color: Theme_req.offWhite,
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                children: [
                                  CategoryButton(
                                      label: 'All', isSelected: true),
                                  CategoryButton(
                                    label: 'UI/UX',
                                  ),
                                  CategoryButton(label: 'Neo Brutalism'),
                                  CategoryButton(label: 'Minimal'),
                                  CategoryButton(label: 'Maximal'),
                                  CategoryButton(label: 'Retro'),
                                  CategoryButton(label: 'Heat Map'),
                                  CategoryButton(label: 'Typography'),
                                  CategoryButton(label: 'Package Design'),
                                  CategoryButton(label: 'AI Generated'),
                                ],
                              ),
                            )),
                            Row(
                              children: [
                                OutlinedButton(
                                  onPressed: null,
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.0,
                                        vertical: 0.0), // Reduced padding
                                    minimumSize: Size(10, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    side: BorderSide(
                                      color: Theme_req.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      icon: const Icon(Icons.filter_list),
                                      iconSize:
                                          15, // Reduce the size of the icon
                                      iconEnabledColor: Theme_req.black,
                                      items: const [
                                        DropdownMenuItem<String>(
                                          value: 'Option 1',
                                          child: Text('Option 1'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Option 2',
                                          child: Text('Option 2'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Option 3',
                                          child: Text('Option 3'),
                                        ),
                                      ],
                                      onChanged: (value) {},
                                      hint: Text(
                                        'Filter',
                                        style: GoogleFonts.montserrat(
                                          color: Theme_req.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: Theme_req.stxt_size,
                                        ),
                                      ),
                                      isDense:
                                          true, // Make the dropdown more compact
                                      alignment: Alignment
                                          .center, // Align the text in the center
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15.0),
                                OutlinedButton(
                                  onPressed: null,
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.0,
                                        vertical: 0.0), // Reduced padding
                                    minimumSize: Size(10, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    side: BorderSide(
                                      color: Theme_req.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      icon: const Icon(Icons.expand_more),
                                      iconSize:
                                          15, // Reduce the size of the icon
                                      iconEnabledColor: Theme_req.black,
                                      items: const [
                                        DropdownMenuItem<String>(
                                          value: 'Following',
                                          child: Text('Following'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'All',
                                          child: Text('All'),
                                        ),
                                        DropdownMenuItem<String>(
                                          value: 'Latest',
                                          child: Text('Latest'),
                                        ),
                                      ],
                                      onChanged: (value) {},
                                      hint: Text(
                                        'Following',
                                        style: GoogleFonts.montserrat(
                                          color: Theme_req.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: Theme_req.stxt_size,
                                        ),
                                      ),
                                      isDense:
                                          true, // Make the dropdown more compact
                                      alignment: Alignment
                                          .center, // Align the text in the center
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
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
                                child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      clipBehavior: Clip.antiAlias,
                                      child: FutureBuilder(
                                        future: (index % 2 == 0)
                                            ? link("1.png")
                                            : link("2.png"),
                                        builder: (context, snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.done) {
                                            return Image.network(
                                              snapshot.data.toString(),
                                              fit: BoxFit.cover,
                                            );
                                          } else {
                                            return const Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }
                                        },
                                      ),
                                    )),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Second section: Weekly Top Designs and Freshmen
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.5, // 50% of screen height
                    color: Colors.black,
                    // child: WeeklyTopDesignsWidget(), // Replace with your actual WeeklyTopDesignsWidget
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.5, // 50% of screen height
                    color: Colors.white,
                    // child: FreshmenWidget(), // Replace with your actual FreshmenWidget
                  ),
                ],
              ),
            ),
            // Third section: Top Artists and Footer
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.3, // 30% of screen height
                    color: Colors.black,
                    // child: TopArtistsWidget(), // Replace with your actual TopArtistsWidget
                  ),
                  const Divider(),
                  Container(
                    height: MediaQuery.of(context).size.height *
                        0.7, // 70% of screen height
                    color: Colors.black,
                    // child: FooterWidget(), // Replace with your actual FooterWidget
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoryButton({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: isSelected ? Colors.white : Theme_req.black,
        backgroundColor:
            isSelected ? const Color(0xFF9489E9) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        side: isSelected
            ? BorderSide.none
            : const BorderSide(color: Colors.transparent),
      ),
      onPressed: () {},
      child: Text(label,
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w500, fontSize: Theme_req.stxt_size)),
    );
  }
}

class TaperedDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Theme_req.piechart_outer // Divider color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1; // Starting thickness at the edges

    // Create a path that starts thin at the edges and thickens towards the center
    Path path = Path();
    for (double i = 0; i < size.width; i++) {
      double thickness = 6.0 *
          (1 -
              ((i - size.width / 2).abs() /
                  (size.width / 2))); // Adjust thickness
      path.moveTo(i, size.height / 2 - thickness / 2);
      path.lineTo(i, size.height / 2 + thickness / 2);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
