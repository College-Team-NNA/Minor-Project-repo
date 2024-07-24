import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/login_page.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/Pages&Widgets/protfolio.dart';
import 'package:minor_project/Pages&Widgets/sign_up.dart';
import 'package:minor_project/Pages&Widgets/under_construction_page.dart';
import 'package:minor_project/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // await FirebaseAuth.instance.useAuthEmulator();
  runApp(const Proj());
}

class Proj extends StatelessWidget {
  const Proj({super.key});
  static bool logged_in = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/underconstruction",
      routes: {
        "/underconstruction": (context) => const UnderConstructionPage(),
        "/homepage": (context) => const HomePage(),
        "/portfolio": (context) =>
            logged_in ? const Portfolio() : const LoginPage(),
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignUp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [Proj.logged_in ? const navBar() : const DefNavBar()]),
        body: const Center(
          child: Text("Home Page"),
        ));
  }
}
