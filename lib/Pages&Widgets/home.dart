import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Theme_req.offWhite,
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
                            size: Size(
                                constraints.maxWidth, 2), // 70% of screen width
                            painter: TaperedDividerPainter(),
                          );
                        },
                      ),
                      const TopColumn(),
                    ],
                  ),
                ),
                const TopDesign(),
                const NewJoinee(),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height *
                            0.4, // 30% of screen height
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal:
                                                  30.0), // Adjust as necessary
                                          child: Text(
                                            "Top Artists ",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              decoration: TextDecoration.none,
                                              fontSize: 30,
                                              color: Theme_req.white,
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          top: 3,
                                          left: 195,
                                          child: Icon(
                                            Icons.auto_awesome,
                                            size: 20,
                                            color: Theme_req.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30.0),
                                      child: Text(
                                        "Collab with the best",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          decoration: TextDecoration.none,
                                          fontSize: 19,
                                          color: Theme_req.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        child: buildProfile(
                                            '3dmodel 1.png', // Replace with the actual image asset
                                            'Naman Dixit',
                                            'UI/UX Designer',
                                            context),
                                        onTap: () => Navigator.pushNamed(
                                            context, "/portfolio"),
                                      ),
                                      const SizedBox(width: 50),
                                      buildProfile(
                                          'miles.png', // Replace with the actual image asset
                                          'Miles Anderson',
                                          'Graphic Designer',
                                          context),
                                      const SizedBox(width: 50),
                                      buildProfile(
                                          'owen.png', // Replace with the actual image asset
                                          'Owen Parker',
                                          'Web Designer',
                                          context),
                                      const SizedBox(width: 50),
                                      buildProfile(
                                          'jasper.png', // Replace with the actual image asset
                                          'Jasper Collins',
                                          'Product Designer',
                                          context),
                                      const SizedBox(width: 50),
                                      buildProfile(
                                          'zara.png', // Replace with the actual image asset
                                          'Zara Reed',
                                          'Digital Illustrator',
                                          context),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) {
                          return CustomPaint(
                            size: Size(
                                constraints.maxWidth, 2), // 70% of screen width
                            painter: TaperedDividerPainter(),
                          );
                        },
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height *
                            0.6, // 70% of screen height
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(8))),
        onPressed: () => Navigator.pushNamed(context, "/chat"),
        backgroundColor: Theme_req.follow_btn.withOpacity(0.8),
        child: Transform.flip(
          flipX: true,
          child: const Icon(
            Icons.menu,
            size: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

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
      onPressed: onPressed,
      child: Text(
        label,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500, fontSize: Theme_req.stxt_size),
      ),
    );
  }
}

class TaperedDividerPainter extends CustomPainter {
  final double taperWidth;

  TaperedDividerPainter({this.taperWidth = 0.15});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Theme_req.piechart_outer // Divider color
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    double leftTaperEnd = size.width * taperWidth;
    double rightTaperStart = size.width * (1 - taperWidth);

    Path path = Path()
      ..moveTo(leftTaperEnd, size.height / 2)
      ..quadraticBezierTo(
        size.width / 2, size.height / 2 - 5, // Control point for tapering
        rightTaperStart, size.height / 2,
      )
      ..quadraticBezierTo(
        size.width / 2,
        size.height / 2 + 3,
        leftTaperEnd,
        size.height / 2,
      )
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

Widget buildProfile(
    String imagePath, String name, String role, BuildContext context) {
  return Column(
    children: [
      FutureBuilder(
          future: link(imagePath),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.04,
                    // Adjust the size as per your design
                    backgroundImage: NetworkImage(snapshot.data.toString()),
                  )
                : const CircularProgressIndicator();
          }),
      const SizedBox(height: 10),
      Text(
        name,
        style: GoogleFonts.poppins(
          color: const Color(0xFFE7E7E7),
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        role,
        style: GoogleFonts.poppins(
          color: const Color(0xFF656565),
          fontSize: 14,
        ),
      ),
    ],
  );
}

class TopColumn extends StatefulWidget {
  const TopColumn({super.key});

  @override
  State<TopColumn> createState() => _TopColumnState();
}

class _TopColumnState extends State<TopColumn> {
  int _lindex = 0;

  int selectedIndex = 0;

  final List<String> categories = [
    'All',
    'UI/UX',
    'Neo Brutalism',
    'Minimal',
    'Maximal',
    'Retro',
    'Heat Map',
    'Typography',
    'Package Design',
    'AI Generated',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: MediaQuery.of(context).size.height * 0.5, // 50% of screen height
      color: Theme_req.offWhite,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    children: List.generate(categories.length, (index) {
                      return CategoryButton(
                        label: categories[index],
                        isSelected: selectedIndex == index,
                        onPressed: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    }),
                  ),
                )),
                // TODO:Category Button List onpress func @aryaJha
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0, vertical: 0.0), // Reduced padding
                        minimumSize: const Size(10, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: const BorderSide(
                          color: Theme_req.black,
                          width: 1.0,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.filter_list),
                          iconSize: 15, // Reduce the size of the icon
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
                          isDense: true, // Make the dropdown more compact
                          alignment:
                              Alignment.center, // Align the text in the center
                        ),
                      ),
                    ),
                    // Kinda Sort Button
                    const SizedBox(width: 15.0),
                    OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2.0), // Reduced padding
                        minimumSize: const Size(10, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: const BorderSide(
                          color: Theme_req.black,
                          width: 1.0,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.expand_more),
                          iconSize: 15, // Reduce the size of the icon
                          iconEnabledColor: Theme_req.black,
                          items: const [
                            DropdownMenuItem<String>(
                              value: 'All',
                              child: Row(
                                children: [
                                  Icon(Icons.select_all),
                                  SizedBox(width: 8),
                                  Text('All'),
                                ],
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Latest',
                              child: Row(
                                children: [
                                  Icon(Icons.update),
                                  SizedBox(width: 8),
                                  Text('Latest'),
                                ],
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: 'Following',
                              child: Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 8),
                                  Text('Following'),
                                ],
                              ),
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
                          isDense: true, // Make the dropdown more compact
                          alignment:
                              Alignment.center, // Align the text in the center
                        ),
                      ),
                    ),
                    // Fliter Button
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stack(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 16 / 10,
                  ),
                  itemBuilder: (BuildContext context, int ind) {
                    int index = ind + _lindex;
                    return Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to the start
                      children: [
                        AspectRatio(
                          aspectRatio: 16.1 / 9, // Keep the aspect ratio fixed
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Theme.of(context).cardColor,
                            ),
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
                                    width: double.infinity,
                                  );
                                } else {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ),
                        ), // Spacing between image and text
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 4), // Add padding to text
                          child: Row(
                            children: [
                              Text(
                                "Wild West Dashboard Page  ", // Replace with dynamic text if needed
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black, // Adjust color as needed
                                ),
                              ),
                              Text(
                                "Lucas Morgan", // Replace with dynamic text if needed
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Theme_req
                                      .bio_name, // Adjust color as needed
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.remove_red_eye_rounded, size: 15),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "11.2k", // Replace with dynamic text if needed
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Theme_req
                                      .bio_name, // Adjust color as needed
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
                _lindex <= 3
                    ? Positioned(
                        right: 20,
                        top: MediaQuery.of(context).size.height * .113,
                        child: Material(
                          elevation: 6, // Adjust the elevation value as needed
                          shape:
                              const CircleBorder(), // Ensures the button remains circular
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.play,
                              size: 18,
                            ),
                            color: Theme_req.follow_btn, // Icon color
                            onPressed: () {
                              if (_lindex < 4) {
                                setState(() {
                                  _lindex++;
                                });
                              }
                            },
                          ),
                        ),
                      )
                    : const SizedBox(),
                _lindex > 0
                    ? Positioned(
                        left: 20,
                        top: MediaQuery.of(context).size.height * .113,
                        child: Material(
                          elevation: 6, // Adjust the elevation value as needed
                          shape:
                              const CircleBorder(), // Ensures the button remains circular

                          child: Transform.flip(
                            flipX: true,
                            child: IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.play,
                                size: 18,
                              ),
                              color: Theme_req.follow_btn, // Icon color
                              onPressed: () {
                                if (_lindex <= 4 && _lindex > 0) {
                                  setState(() {
                                    _lindex--;
                                  });
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide.none,
              ),
            ),
            child: const Text(
              "View All",
              style: TextStyle(
                color: Colors.black, // Text color set to black
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopDesign extends StatefulWidget {
  const TopDesign({super.key});

  @override
  State<TopDesign> createState() => _TopDesignState();
}

class _TopDesignState extends State<TopDesign> {
  int _lindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      // 50% of screen height
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0), // Adjust as necessary
                        child: Text(
                          "Weeks' Top Design ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            color: Theme_req.white,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 3,
                        left: 310,
                        child: Icon(
                          Icons.auto_awesome,
                          size: 20,
                          color: Theme_req.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Learn what's popular this weekend",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none,
                        fontSize: 19,
                        color: Theme_req.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 16 / 10,
                    ),
                    itemBuilder: (BuildContext context, int ind) {
                      int index = ind + _lindex;
                      return Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the start
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9, // Keep the aspect ratio fixed
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Theme.of(context).cardColor,
                              ),
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
                                      width: double.infinity,
                                    );
                                  } else {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              ),
                            ),
                          ), // Spacing between image and text
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 4), // Add padding to text
                            child: Row(
                              children: [
                                Text(
                                  "Wild West Dashboard Page  ", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Theme_req
                                        .white, // Adjust color as needed
                                  ),
                                ),
                                Text(
                                  "Lucas Morgan", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Theme_req
                                        .white, // Adjust color as needed
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  size: 15,
                                  color: Theme_req.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "11.2k", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Theme_req
                                        .white, // Adjust color as needed
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  _lindex <= 3
                      ? Positioned(
                          right: 20,
                          top: MediaQuery.of(context).size.height * .113,
                          child: Material(
                            elevation:
                                6, // Adjust the elevation value as needed
                            shape:
                                const CircleBorder(), // Ensures the button remains circular
                            child: IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.play,
                                size: 18,
                              ),
                              color: Theme_req.follow_btn, // Icon color
                              onPressed: () {
                                if (_lindex < 4) {
                                  setState(() {
                                    _lindex++;
                                  });
                                }
                              },
                            ),
                          ),
                        )
                      : const SizedBox(),
                  _lindex > 0
                      ? Positioned(
                          left: 20,
                          top: MediaQuery.of(context).size.height * .113,
                          child: Material(
                            elevation:
                                6, // Adjust the elevation value as needed
                            shape:
                                const CircleBorder(), // Ensures the button remains circular

                            child: Transform.flip(
                              flipX: true,
                              child: IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.play,
                                  size: 18,
                                ),
                                color: Theme_req.follow_btn, // Icon color
                                onPressed: () {
                                  if (_lindex <= 4 && _lindex > 0) {
                                    setState(() {
                                      _lindex--;
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide.none,
                ),
              ),
              child: const Text(
                "View All",
                style: TextStyle(
                  color: Theme_req.white, // Text color set to black
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NewJoinee extends StatefulWidget {
  const NewJoinee({super.key});

  @override
  State<NewJoinee> createState() => _NewJoineeState();
}

class _NewJoineeState extends State<NewJoinee> {
  int _lindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5, // 50% of screen height
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0), // Adjust as necessary
                        child: Text(
                          "Freshmen ",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            color: Theme_req.black,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 3,
                        left: 180,
                        child: Icon(
                          Icons.auto_awesome,
                          size: 20,
                          color: Theme_req.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "New Joinee this week",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        fontSize: 19,
                        color: Theme_req.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 16 / 10,
                    ),
                    itemBuilder: (BuildContext context, int ind) {
                      int index = ind + _lindex;
                      return Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the start
                        children: [
                          AspectRatio(
                            aspectRatio:
                                16.1 / 9, // Keep the aspect ratio fixed
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Theme.of(context).cardColor,
                              ),
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
                                      width: double.infinity,
                                    );
                                  } else {
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              ),
                            ),
                          ), // Spacing between image and text
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 4), // Add padding to text
                            child: Row(
                              children: [
                                Text(
                                  "Wild West Dashboard Page  ", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: Theme_req
                                        .black, // Adjust color as needed
                                  ),
                                ),
                                Text(
                                  "Lucas Morgan", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Theme_req
                                        .black, // Adjust color as needed
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  size: 15,
                                  color: Theme_req.white,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "11.2k", // Replace with dynamic text if needed
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Theme_req
                                        .black, // Adjust color as needed
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  _lindex <= 3
                      ? Positioned(
                          right: 20,
                          top: MediaQuery.of(context).size.height * .113,
                          child: Material(
                            elevation:
                                6, // Adjust the elevation value as needed
                            shape:
                                const CircleBorder(), // Ensures the button remains circular
                            child: IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.play,
                                size: 18,
                              ),
                              color: Theme_req.follow_btn, // Icon color
                              onPressed: () {
                                if (_lindex < 4) {
                                  setState(() {
                                    _lindex++;
                                  });
                                }
                              },
                            ),
                          ),
                        )
                      : const SizedBox(),
                  _lindex > 0
                      ? Positioned(
                          left: 20,
                          top: MediaQuery.of(context).size.height * .113,
                          child: Material(
                            elevation:
                                6, // Adjust the elevation value as needed
                            shape:
                                const CircleBorder(), // Ensures the button remains circular

                            child: Transform.flip(
                              flipX: true,
                              child: IconButton(
                                icon: const FaIcon(
                                  FontAwesomeIcons.play,
                                  size: 18,
                                ),
                                color: Theme_req.follow_btn, // Icon color
                                onPressed: () {
                                  if (_lindex <= 4 && _lindex > 0) {
                                    setState(() {
                                      _lindex--;
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: BorderSide.none,
                ),
              ),
              child: const Text(
                "View All",
                style: TextStyle(
                    color: Theme_req.black, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
