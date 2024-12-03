import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/Pages&Widgets/androui.dart';
import 'package:minor_project/Pages&Widgets/chat.dart';
import 'package:minor_project/Pages&Widgets/edit_profile.dart';
import 'package:minor_project/Pages&Widgets/home.dart';
import 'package:minor_project/Pages&Widgets/login_page.dart';
import 'package:minor_project/Pages&Widgets/portfolio.dart';
import 'package:minor_project/Pages&Widgets/portui.dart';
import 'package:minor_project/Pages&Widgets/profile_visitor_view.dart';
import 'package:minor_project/Pages&Widgets/project_upload.dart';
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
        "/visitorView": (context) =>
            !loggedIn() ? const LoginPage() : const ProfileVisitorView(),
        "/portui": (context) =>
            !loggedIn() ? const LoginPage() : const PortUI(),
        "/androui": (context) =>
            !loggedIn() ? const LoginPage() : const AndroUI(),
        "/underconstruction": (context) => const UnderConstructionPage(),
        "/homepage": (context) => const HomePage(),
        "/portfolio": (context) =>
            loggedIn() ? const Portfolio() : const LoginPage(),
        "/login": (context) =>
            loggedIn() ? const Portfolio() : const LoginPage(),
        "/signup": (context) => loggedIn() ? const Portfolio() : const SignUp(),
        "/chat": (context) => loggedIn() ? const Chat() : const LoginPage(),
        "/projectuploadform": (context) =>
            !loggedIn() ? const LoginPage() : const ProjectUpload(),
        "/editprofile": (context) =>
            !loggedIn() ? const LoginPage() : const EditProfile(),
      },
    );
  }
}
