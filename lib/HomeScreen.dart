import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FD),
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
        decoration: BoxDecoration(color: Color(0xFFF8F8FD)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://s3-alpha-sig.figma.com/img/47f5/5592/238c3c62bcb527a535db7b396f4fcdee?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EEGtEOxrquW0sVeeN~RdedBfmeue1RxYJLP-bC0IXNfBZn71z-FOz6dVdgL7TPxkoDPSlfrFqrdv~whwUQzCZ2cLDQHuW3qKOjGrSKCo6GdAisZ9u6nj8aIn4P8QExCVemQ9EjX3k3UHON6JWs0jp5sM30yevCJSR9baXrxwW08QSrUw-odQweBV7EaIyhl3YaIRoKrAbKPomanL6SNsfdFVlae0W4B~VzJeumlINfL0sPAJ4iX3VID31PjvBcKY1jJik8DiHYJjBdyYE2E0fSPBSkjWfb1Gj4jdUR1fse-dldBP2AlkMgi~Isz2-Sw75JBfvi7wFqGeya-FxgC1bw__',
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Course",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Discussions",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Pricing",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Text("Fuck Society 3"),
              Text("Fuck Society 4"),
              Text("Fuck Society 5"),
            ],
          ),
        ),
      ),
    );
  }
}
