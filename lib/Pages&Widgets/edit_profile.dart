import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme_req.offWhite,
        appBar: AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
        body: Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 15.0, bottom: 25),
            child:Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme_req.white,
              ),
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    changeDetails(),
                    changeLinks(),
                  ],
                ),
              ),
            )
        )
    );
  }
}

class changePhoto extends StatefulWidget {
  const changePhoto({super.key});

  @override
  State<changePhoto> createState() => _changePhotoState();
}
class _changePhotoState extends State<changePhoto> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CHANGE PROFILE PHOTO",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none,
            fontSize: 15,
            color: Theme_req.bio_name,
          ),),
        const SizedBox(height: 15,),
        Row(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.height * 0.07,
            ),
            const SizedBox(width: 25,),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Change Photo',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
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
                const SizedBox(height: 8,),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete, // Pen icon
                    color: Color(0xFFE3002B),
                    size: 16,
                  ),
                  label: Text(
                    'Remove',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF404040),
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme_req.white,
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: const BorderSide(
                        color: Theme_req.piechart_outer,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],

            )
          ],
        ),
        const SizedBox(height: 5,),
        Text("Change/Upload Profile Photo. Minimum size should be 256 x 256",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.none,
            fontSize: 8,
            color: const Color(0xFF474747),
          ),),
      ],
    );
  }
}

class changeInfo extends StatefulWidget {
  const changeInfo({super.key});

  @override
  State<changeInfo> createState() => _changeInfoState();
}
class _changeInfoState extends State<changeInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CHANGE PUBLIC INFO",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none,
            fontSize: 15,
            color: Theme_req.bio_name,
          ),
        ),
        const SizedBox(height: 5,),
        Row(
          children: [
            const Expanded(flex:1,child:  CustomTextField(label: 'Username',isRequired: true,)),
            const SizedBox(width: 15,),
            Expanded(child: Container(),flex: 1,),
          ],
        ),
        Text("*username can only be changed once, be careful before changing",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
            fontSize: 10,
            color: Theme_req.piechart_outer,
          ),),
        const SizedBox(height: 5,),
        const Row(
          children: [
            Expanded(flex: 5,
                child: CustomTextField(label: 'First Name', isRequired: true,)
            ),
            SizedBox(width: 15,),
            Expanded(flex: 5,
                child: CustomTextField(label: 'Last Name', isRequired: false,)
            ),
          ],
        ),
        const SizedBox(height: 5,),
        const Row(
          children: [
            Expanded(flex: 5,
                child: CustomTextField(label: 'Designation', isRequired: true,)
            ),
            SizedBox(width: 15,),
            Expanded(flex: 5,
                child: CustomTextField(label: 'Gender', isRequired: false,)
            ),
          ],
        ),
        const SizedBox(height: 5,),
        const CustomTextField(label: 'About Me',isRequired: false,),
        Text("*please use authentic and generic information to maintain professionalism",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
            fontSize: 10,
            color: Theme_req.piechart_outer,
          ),)

      ],
    );
  }
}

class changeLinks extends StatefulWidget {
  const changeLinks({super.key});

  @override
  State<changeLinks> createState() => _changeLinksState();
}
class _changeLinksState extends State<changeLinks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CHANGE CONTACT INFO",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            decoration: TextDecoration.none,
            fontSize: 15,
            color: Theme_req.bio_name,
          ),),
        const SizedBox(height: 15,),
        const Row(
          children: [
            Flexible(flex: 1,child: CustomTextField(label: 'Personal Website',isRequired: true,)),
            SizedBox(width: 15,),
            Flexible(flex:1,child:  CustomTextField(label: 'Email',isRequired: true,)),
            SizedBox(width: 15,),
            Flexible(flex:1,child:  CustomTextField(label: 'Phone Number',isRequired: true,)),
          ],
        ),
        Text("*please use generic information to maintain professionalism",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
            fontSize: 10,
            color: Theme_req.piechart_outer,
          ),)
      ],
    );
  }
}

class changeDetails extends StatefulWidget {
  const changeDetails({super.key});

  @override
  State<changeDetails> createState() => _changeDetailsState();
}
class _changeDetailsState extends State<changeDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child:Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 28),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("MY PROFILE",
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
                            Icons.save, // Pen icon
                            color: Colors.white,
                            size: 16,
                          ),
                          label: Text(
                            'Save Changes',
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
                    ),
                    const SizedBox(height: 15,),
                    const changePhoto(),
                    const SizedBox(height: 15,),
                    const changeInfo()
                  ],
                ),
              )
          ),//Details
          const SizedBox(width: 20,),
          Expanded(
              flex: 1,
              child:Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 28),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FutureBuilder(
                    future: link("profile edit page - Side column.png"),
                    builder: (context, snapshot) {
                      return snapshot.connectionState == ConnectionState.done
                          ? Image.network(
                        snapshot.data.toString(),
                        height: 45.0,
                        width: 180.0,
                      )
                          : const Center(child: CircularProgressIndicator());
                    }),
              )
          ) //Image
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isRequired;

  const CustomTextField({
    super.key,
    required this.label,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: label,
              style: GoogleFonts.poppins(
                color: const Color(0xFF2C2C2C),
                fontSize: 15,
              ),
              children: [
                if (isRequired)
                  const TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: Color(0xFFC2C2C2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



