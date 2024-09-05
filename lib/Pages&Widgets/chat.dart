import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/utils/func.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme_req.offWhite,
        appBar:
            AppBar(actions: [loggedIn() ? const navBar() : const DefNavBar()]),
        body: Padding(
          padding: const EdgeInsets.only(
              left: 30.0, right: 30.0, top: 10, bottom: 20),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 18.0, right: 18.0, top: 18, bottom: 18),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme_req.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(4.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Theme_req.black,
                              hintText: "Search user",
                              hintStyle: TextStyle(
                                color: Color(0xFFACACAC),
                                fontSize: 13,
                              ),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                child: Icon(
                                  Icons.search,
                                  size: 23.0,
                                ),
                              ),
                              prefixIconColor: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomChatCard(
                          profileImage: "pfp1.png",
                          name: 'Naman Goel',
                          message: 'Dashboard ready, will start other ...',
                          time: '4m',
                          notificationCount: 1,
                          isOnline: true,
                          isSelected: true,
                          isPinned: true,
                        ),
                        const CustomChatCard(
                          profileImage: "pfp2.png",
                          name: 'Naman Dixit',
                          message:
                              'Designs are ready, review now for changes...',
                          time: '12m',
                          notificationCount: 2,
                          isOnline: true,
                          isPinned: true,
                        ),
                        const CustomChatCard(
                          profileImage: "pfp3.png",
                          name: 'Arya Jha',
                          message: 'Graphs on the way, trying to figure o...',
                          time: '20m',
                          notificationCount: 1,
                          isOnline: false,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 7,
                child: chatBox(context),
              ),
            ],
          ),
        ));
  }
}

Widget chatBox(context) {
  return Container(
    padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 18, bottom: 18),
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Theme_req.white,
    ),
    child: Column(
      children: [
        Row(
          children: [
            FutureBuilder(
                future: link("pfp1.png"),
                builder: (context, snapshot) {
                  return snapshot.connectionState == ConnectionState.done
                      ? Image.network(
                          snapshot.data.toString(),
                          height: 50.0,
                          width: 50.0,
                        )
                      : const Center(child: CircularProgressIndicator());
                }),
            SizedBox(
              width: 10,
            ),
            Text(
              "Naman Goel",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_sharp,
                  color: Color(0xFF9489E9),
                  size: 25,
                )),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Color(0xFF9489E9),
                size: 25,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xFFEEEEF8),
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Transform.rotate(
                    angle: 0.6,
                    child: Icon(
                      Icons.attach_file_sharp,
                      color: Color(0xFF9489E9),
                    ),
                  )),
              VerticalDivider(
                color: Color(0xFFACACAC),
                indent: 10,
                endIndent: 10,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your message",
                  hintStyle: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: 13,
                  ),
                ),
              )),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic,
                    color: Color(0xFF9489E9),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Color(0xFF9489E9),
                  )),
            ],
          ),
        )
      ],
    ),
  );
}

class CustomChatCard extends StatelessWidget {
  final String profileImage;
  final String name;
  final String message;
  final String time;
  final int notificationCount;
  final bool isOnline;
  final bool isSelected;
  final bool isPinned;

  const CustomChatCard({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.message,
    required this.time,
    required this.notificationCount,
    this.isOnline = false,
    this.isSelected = false,
    this.isPinned = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected ? const Color(0xFFEEEEF8) : Theme_req.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  8.0), // You can adjust the roundness here
              child: FutureBuilder(
                  future: link(profileImage),
                  builder: (context, snapshot) {
                    return snapshot.connectionState == ConnectionState.done
                        ? Image.network(
                            snapshot.data.toString(),
                            height: 50.0,
                            width: 50.0,
                          )
                        : const Center(child: CircularProgressIndicator());
                  }),
            ),
            SizedBox(width: 10),
            // Name, message and online status
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 5),
                      isOnline
                          ? Icon(
                              Icons.circle,
                              color: Colors.green,
                              size: 10,
                            )
                          : Icon(
                              Icons.circle,
                              color: Color(0xFFFF6969),
                              size: 10,
                            )
                    ],
                  ),
                  SizedBox(height: 2),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.purple[200],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  textAlign: TextAlign.end,
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (notificationCount > 0)
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 17, // Adjust the size as needed
                            height: 17, // Adjust the size as needed
                            decoration: BoxDecoration(
                              color: Color(0xFFFF7A55),
                              shape: BoxShape.circle,
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.circle,
                            size: 17,
                            color: Color(0xFFFF7A55),
                          ),
                          Positioned(
                            child: Text(
                              '$notificationCount',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    SizedBox(width: 10),
                    if (isPinned)
                      Transform.rotate(
                        angle: 0.4, // Adjust the angle for slant (in radians)
                        child: Icon(Icons.push_pin,
                            size: 18, color: Color(0xFF222222)),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
