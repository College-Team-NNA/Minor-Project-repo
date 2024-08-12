import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/home.dart';
import 'package:minor_project/Pages&Widgets/login_page.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/Pages&Widgets/protfolio.dart';
import 'package:minor_project/Pages&Widgets/sign_up.dart';
import 'package:minor_project/Pages&Widgets/under_construction_page.dart';
import 'package:minor_project/firebase_options.dart';
import 'package:minor_project/utils/func.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // await FirebaseAuth.instance.useAuthEmulator();
  runApp(const Proj());
}

class Proj extends StatelessWidget {
  const Proj({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/homepage",
      routes: {
        "/underconstruction": (context) => const UnderConstructionPage(),
        "/homepage": (context) => const HomePage(),
        "/portfolio": (context) =>
            loggedIn() ? const Portfolio() : const LoginPage(),
        "/login": (context) =>
            loggedIn() ? const Portfolio() : const LoginPage(),
        "/signup": (context) => loggedIn() ? const Portfolio() : const SignUp(),
      },
    );
  }
}


