import 'package:flutter/material.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class AppBars extends StatelessWidget {
  const AppBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56.0,
        decoration: const BoxDecoration(color: Theme_req.offWhite),
        child: Padding(
          padding: Theme_req.defaultPadding,
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
                child: const Text(
                  "Course",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 10.0),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Discussions",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 10.0),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Pricing",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
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
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(),
              const SizedBox(
                width: 5
              ),
              const CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
