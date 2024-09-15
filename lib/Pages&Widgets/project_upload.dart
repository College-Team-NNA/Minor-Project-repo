import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class ProjectUpload extends StatefulWidget {
  const ProjectUpload({Key? key}) : super(key: key);

  @override
  State<ProjectUpload> createState() => _ProjectUploadState();
}

class _ProjectUploadState extends State<ProjectUpload> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme_req.offWhite,
        appBar: AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
        body: Padding(padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0, bottom: 25),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme_req.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("UPLOAD PROJECT",
                      style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      fontSize: 26,
                      color: Theme_req.bio_name,

                    ),),
                    const Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit, // Pen icon
                        color: Colors.white,
                        size: 16,
                      ),
                      label: Text(
                        'Publish',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme_req.piechart_outer,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Rounded corners
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "/portfolio");
                      },
                      icon: const Icon(
                        Icons.close, // Pen icon
                        color: Colors.white,
                        size: 16,
                      ),
                      label: Text(
                        'Close',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme_req.bio_name,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6), // Rounded corners
                        ),
                      ),
                    )
                  ],
                ), // Header
                const SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'PROJECT TITLE',
                    hintStyle: GoogleFonts.poppins(
                      color: Color(0x669489E9),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      fontSize: 20,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF8F8FD),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                      contentPadding: EdgeInsets.only(left: 50,top: 15,bottom: 15)
                  ),
                  style: GoogleFonts.poppins(
                    color: Theme_req.piechart_outer,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                    fontSize: 20,
                  ),
                ),// Title
                SizedBox(height: 20,),
                UploadDocs(),
                SizedBox(height: 20,),
                TagsAndTools(),
                SizedBox(height: 20,),
                AboutProject()
              ],
            ),
        ),
        )
    );
  }
}
class UploadDocs extends StatefulWidget {
  const UploadDocs({Key? key}) : super(key: key);

  @override
  State<UploadDocs> createState() => _UploadDocsState();
}
class _UploadDocsState extends State<UploadDocs> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(flex: 5,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8FD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Upload Thumbnail',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Theme_req.piechart_outer, // Light purple color
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8),
                    color: Theme_req.piechart_outer, // Adjust the color as needed
                    strokeWidth: 2,
                    dashPattern: [10, 6],
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Theme_req.white,
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: RichText(
                              text: TextSpan(
                                text: 'Drop your file(s) here or ',
                                style: GoogleFonts.poppins(
                                  color: Color(0x669489E9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'browse',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF9489E9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 20,),
          Expanded(flex: 5,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.25,
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8FD),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Upload Document ',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF9489E9),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: 'Image/Video',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF9489E9),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(8),
                    color: Theme_req.piechart_outer, // Adjust the color as needed
                    strokeWidth: 2,
                    dashPattern: [10, 6],
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Theme_req.white,
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: RichText(
                              text: TextSpan(
                                text: 'Drop your file(s) here or ',
                                style: GoogleFonts.poppins(
                                  color: Color(0x669489E9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'browse',
                                    style: GoogleFonts.poppins(
                                      color: Color(0xFF9489E9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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

class TagsAndTools extends StatefulWidget {
  const TagsAndTools({Key? key}) : super(key: key);

  @override
  State<TagsAndTools> createState() => _TagsAndToolsState();
}
class _TagsAndToolsState extends State<TagsAndTools> {

  final TextEditingController _controller = TextEditingController();
  final List<String> _chips = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 5,
          child:Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8FD),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Wrap(
              spacing: 6.0,
              runSpacing: 6.0,
              children: [
                // Display the chips
                for (var chip in _chips)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Chip(
                      label: Text(chip,style: GoogleFonts.poppins(
                        color: const Color(0xFF9489E9),
                        letterSpacing: 1.1,
                        fontSize: 15,
                      )),
                      onDeleted: () {
                        setState(() {
                          _chips.remove(chip);
                        });
                      },
                    ),
                  ),
                // Input field for adding chips
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: _chips.isEmpty ? 'TAGS' : 'ADD MORE...',
                      hintStyle: GoogleFonts.poppins(
                        color: const Color(0x669489E9),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                      contentPadding: _chips.isEmpty
                          ? const EdgeInsets.only(left: 50)
                          : EdgeInsets.zero,
                    ),
                    style: GoogleFonts.poppins(
                      color: Theme_req.piechart_outer,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      fontSize: 20,
                    ),
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _chips.add(value);
                          _controller.clear();
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20,),
        Expanded(flex: 5,
          child:DropdownButtonFormField<String>(
            decoration: InputDecoration(
              hintText: 'TOOLS USED',
              hintStyle: GoogleFonts.poppins(
                color: const Color(0x669489E9),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
                fontSize: 20,
              ),
              filled: true,
              fillColor: const Color(0xFFF8F8FD),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.only(left: 50,top: 16,bottom: 16),
            ),
            style: GoogleFonts.poppins(
              color: Theme_req.piechart_outer,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
              fontSize: 20,
            ),
            items: <String>['Tool 1', 'Tool 2', 'Tool 3'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {},
            // icon: Icon(
            //   Icons.arrow_drop_down_sharp,
            //   color: const Color(0x669489E9),
            //   // size: 25,
            // ),
          ),

        ),
      ],
    );
  }
}

class AboutProject extends StatefulWidget {
  const AboutProject({Key? key}) : super(key: key);

  @override
  State<AboutProject> createState() => _AboutProjectState();
}
class _AboutProjectState extends State<AboutProject> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'ABOUT PROJECT',
            hintStyle: GoogleFonts.poppins(
              color: Color(0x669489E9),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
              fontSize: 20,
            ),
            filled: true,
            fillColor: const Color(0xFFF8F8FD),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.only(left: 50,top: 15),

          ),
          style: GoogleFonts.poppins(
            color: Theme_req.piechart_outer,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
            fontSize: 20,
          ),
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
        ),
      ),
    );
  }
}


