import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/Pages&Widgets/def_nav_bar.dart';
import 'package:minor_project/Pages&Widgets/navBar.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';
import 'package:minor_project/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  void signup() async {
    String usr = usernameController.text;
    String phone = phoneController.text;
    String pass = passwordController.text;
    String email = emailController.text.trim();
    const anydetail = SnackBar(content: Text("Please fill all the details !"));
    const nophone =
        SnackBar(content: Text("Pookie phone number toh dedo 👉👈"));
    const nomail = SnackBar(content: Text("Kam se kam email hi dedo 👉👈"));

    if (email == "") {
      ScaffoldMessenger.of(context).showSnackBar(nomail);
    } else if (phone == "") {
      ScaffoldMessenger.of(context).showSnackBar(nophone);
    } else if (email == "" && usr == "" && phone == "" && pass == "") {
      ScaffoldMessenger.of(context).showSnackBar(anydetail);
    } else {
      try {
        UserCredential createdUser = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
        if (createdUser.user != null && mounted) {
          Proj.logged_in = true;
          Navigator.pushNamedAndRemoveUntil(
              context, "/portfolio", ModalRoute.withName("/"));
        }
      } on FirebaseAuthException catch (ex) {
        if (mounted) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(ex.code.toString())));
        }
      }
    }
  }

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
                  vertical: MediaQuery.of(context).size.height * 0.06),
              child: Wrap(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register Now",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700, fontSize: 32),
                        ),
                        Text(
                          "Create your new account",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "username",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color(0xff949090),
                              )),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "email",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color(0xff949090),
                              )),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: phoneController,
                          maxLength: 10,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              labelText: "phone number",
                              labelStyle: GoogleFonts.poppins(
                                fontSize: 12,
                                color: const Color(0xff949090),
                              )),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          obscureText: !passvis,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: "set password",
                            labelStyle: GoogleFonts.poppins(
                              color: const Color(0xff949090),
                              fontSize: 12,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passvis = !passvis;
                                });
                              },
                              icon: Icon(passvis
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "By Signing  up you agree to our ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Terms & Condition \n",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme_req.piechart_outer)),
                                TextSpan(
                                    text: "and ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "Privacy Policy",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Theme_req.piechart_outer))
                              ])),
                        ),
                        const SizedBox(height: 18),
                        TextButton(
                          onPressed: () {
                            signup();
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
                                  "Sign Up",
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
                            Text(
                              "Already have an Account?",
                              style: GoogleFonts.poppins(),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    "/login", ModalRoute.withName("/"));
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
                                'Log In',
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
