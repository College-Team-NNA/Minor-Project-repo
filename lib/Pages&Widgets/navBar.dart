import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class navBar extends StatelessWidget {
  const navBar({super.key});

  @override
  Widget build(BuildContext context) {
    final hoverbutton = ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.focused)) {
            return Colors.grey[200];
          }
          return Colors.white;
        },
      ),
    );

    return Expanded(
      child: Container(
        height: 56.0,
        decoration: const BoxDecoration(color: Theme_req.offWhite),
        padding: Theme_req.defaultPadding_navBar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: FutureBuilder(
                  future: link("logo.png"),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.done
                        ? Image.network(
                            snapshot.data.toString(),
                            height: 45.0,
                            width: 180.0,
                          )
                        : const Center(child: CircularProgressIndicator());
                  }),
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/homepage", ModalRoute.withName("/")),
            ),
            const SizedBox(width: 30.0),
            TextButton(
              onPressed: () {},
              child: Text(
                "Course",
                style: GoogleFonts.montserrat(
                    color: Theme_req.bio_name,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const SizedBox(width: 10.0),
            TextButton(
              onPressed: () {},
              child: Text(
                "Discussions",
                style: GoogleFonts.montserrat(
                    color: Theme_req.bio_name,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const SizedBox(width: 10.0),
            TextButton(
              onPressed: () {},
              child: Text(
                "Pricing",
                style: GoogleFonts.montserrat(
                    color: Theme_req.bio_name,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const Spacer(),
            Expanded(
              child: SizedBox(
                width: 150.0,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(4.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    filled: true,
                    fillColor: Theme_req.black,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    ),
                    prefixIconColor: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            CircleAvatar(
                radius: 25,
                backgroundColor: Theme_req.black,
                child: IconButton(
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  color: Theme_req.black,
                  onPressed: () {},
                )),
            const SizedBox(
              width: 15,
            ),
            CircleAvatar(
                radius: 25,
                backgroundColor: Theme_req.black,
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  color: Theme_req.black,
                  onPressed: () {},
                )),
            const SizedBox(width: 15),
            MenuAnchor(
              childFocusNode: FocusNode(debugLabel: "Menu Button"),
              alignmentOffset: const Offset(-65, 8),
              menuChildren: [
                MenuItemButton(
                  style: hoverbutton,
                  requestFocusOnHover: true,
                  leadingIcon: const Icon(
                    Icons.edit_rounded,
                    color: Colors.black,
                  ),
                  child: const Text("Edit profile",
                      style: TextStyle(color: Colors.black)),
                  onPressed: () => Navigator.pushNamed(context, "/editprofile"),
                ),
                MenuItemButton(
                    style: hoverbutton,
                    leadingIcon: const Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    child: const Text("Sign Out",
                        style: TextStyle(color: Colors.black)),
                    onPressed: () => logout())
              ],
              builder: (BuildContext context, MenuController controller,
                  Widget? child) {
                return CircleAvatar(
                  radius: 21,
                  child: FutureBuilder(
                      future: link("3dmodel 1.png"),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData && snapshot.data == null) {
                          return const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: CircularProgressIndicator(),
                          );
                        }
                        return CircleAvatar(
                            radius: 21,
                            backgroundColor: Theme_req.bio_name,
                            backgroundImage:
                                NetworkImage(snapshot.data.toString()),
                            child: IconButton(
                                onPressed: () {
                                  if (controller.isOpen) {
                                    controller.close();
                                  } else {
                                    controller.open();
                                  }
                                },
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.abc,
                                  color: Colors.transparent,
                                )));
                      }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
