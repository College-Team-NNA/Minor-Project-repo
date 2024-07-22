import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passvis = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.transparent,
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.325,
              maxHeight: MediaQuery.of(context).size.height * 0.70),
          child: Wrap(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.08),
                child: Center(
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
                            hintText: "Enter email or phone",
                            hintStyle: GoogleFonts.poppins(
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
                            hintText: "Password",
                            hintStyle: GoogleFonts.poppins(
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
                              style: GoogleFonts.poppins(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                const Color(0xff9489e9)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14)))),
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
                              child: Divider(color: Color(0xff9489e9))),
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
                          Container(
                            width:
                                MediaQuery.of(context).size.width * 0.3 * 0.235,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                size: 34,
                              ),
                            ),
                          ),
                          Container(
                            width:
                                MediaQuery.of(context).size.width * 0.3 * 0.235,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.github,
                              size: 38,
                            )),
                          ),
                          Container(
                            width:
                                MediaQuery.of(context).size.width * 0.3 * 0.235,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: const Center(
                                child: FaIcon(
                              FontAwesomeIcons.apple,
                              size: 38,
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an Account? "),
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
                              'Create Account',
                              style: GoogleFonts.poppins(color: Colors.purple),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
