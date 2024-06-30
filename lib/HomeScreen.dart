import 'package:flutter/material.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar: AppBar(
        actions: const [AppBars()],
      ),
      body: const Center(),
    );
  }
}

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
                'https://s3-alpha-sig.figma.com/img/47f5/5592/238c3c62bcb527a535db7b396f4fcdee?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EEGtEOxrquW0sVeeN~RdedBfmeue1RxYJLP-bC0IXNfBZn71z-FOz6dVdgL7TPxkoDPSlfrFqrdv~whwUQzCZ2cLDQHuW3qKOjGrSKCo6GdAisZ9u6nj8aIn4P8QExCVemQ9EjX3k3UHON6JWs0jp5sM30yevCJSR9baXrxwW08QSrUw-odQweBV7EaIyhl3YaIRoKrAbKPomanL6SNsfdFVlae0W4B~VzJeumlINfL0sPAJ4iX3VID31PjvBcKY1jJik8DiHYJjBdyYE2E0fSPBSkjWfb1Gj4jdUR1fse-dldBP2AlkMgi~Isz2-Sw75JBfvi7wFqGeya-FxgC1bw__',
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
              const TextField(
                  // decoration: InputDecoration(
                  //   fillColor: Theme_req.black,
                  //   prefixIcon: Icon(Icons.search),
                  //   prefixIconColor: Colors.white,
                  // ),
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
                width: 5,
              ),
              const CircleAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
