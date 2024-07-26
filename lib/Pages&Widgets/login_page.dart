import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passvis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme_req.offWhite,
      appBar: AppBar(
          actions: [Proj.logged_in ? const navBar() : const DefNavBar()]),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            color: Colors.transparent,
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme_req.offWhite,
                  borderRadius: BorderRadius.circular(15)),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.325),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.08),
              child: Wrap(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 32),
                        ),
                        Text(
                          "Login to your account",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "Enter email or phone",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color(0xff949090),
                              )),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          obscureText: !passvis,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passvis = !passvis;
                                  });
                                },
                                icon: Icon(passvis
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                color: const Color(0xbb949090),
                              ),
                              labelText: "Password",
                              labelStyle: GoogleFonts.poppins(
                                color: const Color(0xff949090),
                                fontSize: 12,
                              )),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.check_circle_outline_sharp,
                                    color: Color(0xff949090),
                                  ),
                                  Text(
                                    " Remember me",
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xff949090),
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                log("onPressed");
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                splashFactory: NoSplash.splashFactory,
                              ),
                              child: Text(
                                'Forgot password?',
                                style: GoogleFonts.poppins(
                                    color: Theme_req.piechart_outer),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Proj.logged_in = !Proj.logged_in;
                              if (Proj.logged_in) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    "/portfolio", ModalRoute.withName('/'));
                              }
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Theme_req.piechart_outer),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(14)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  "Log In",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            const Expanded(
                                child:
                                    Divider(color: Theme_req.piechart_outer)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text(
                                "OR",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            const Expanded(
                                child: Divider(color: Color(0xff9489e9))),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.3 *
                                          0.235 *
                                          0.3,
                                  vertical: 5),
                              icon: const FaIcon(FontAwesomeIcons.google,
                                  size: 35),
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.white),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                splashFactory: NoSplash.splashFactory,
                                overlayColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.3 *
                                          0.235 *
                                          0.3,
                                  vertical: 5),
                              icon: const FaIcon(FontAwesomeIcons.github,
                                  size: 35),
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.white),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                splashFactory: NoSplash.splashFactory,
                                overlayColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width *
                                          0.3 *
                                          0.235 *
                                          0.3,
                                  vertical: 5),
                              icon: const FaIcon(FontAwesomeIcons.apple,
                                  size: 35),
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.white),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                splashFactory: NoSplash.splashFactory,
                                overlayColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an Account?",
                                style: GoogleFonts.poppins()),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    "/signup", ModalRoute.withName("/"));
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                    return Colors.transparent;
                                  },
                                ),
                                shape: WidgetStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                splashFactory: NoSplash.splashFactory,
                              ),
                              child: Text(
                                'Create Account',
                                style: GoogleFonts.poppins(
                                    color: Theme_req.piechart_outer),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
