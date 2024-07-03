import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class navBar extends StatelessWidget {
  const navBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56.0,
        decoration: const BoxDecoration(color: Theme_req.offWhite),
        child: Padding(
          padding: Theme_req.defaultPadding_navBar,
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://s3-alpha-sig.figma.com/img/9a2e/d58e/aa7d7d387d8aedeaf7086c75f7aafc8c?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Ejm9GkGGuT3ax7XeyQCbg9xXwRYcuEiwqUZ4nT8cbVY3YlE6yNqIk~c8ernrkGwZj2X8Qq51ox7ehHHXZnPnsU9BSIS67nKUBqkZwI0BV4TN~PkoJ4rYEKfkq6nN3iOiG80NTa1-0JekoPP8MvYCRv7GOojCHlYvSdpDlmwnCgxBQh0Rx7p6pui219Fc-54UHgGSHc6XocxC9l3rE-VqOYTZOCeVMMDUxWmw5l8hYOljLvy8vKWHzFOVEQdSIX-GAvtUPiGZS7t4BELyJil~Y9pYwCGGbU9u9~HGhXz23tjtM22~0OlllZ8KDjz51K8FRqVpK1cVvq-iR-JDxLtVnA__',
                height: 45.0,
                width: 180.0,
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
              GestureDetector(
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/Vector.png",
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
