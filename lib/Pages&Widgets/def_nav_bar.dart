import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class DefNavBar extends StatelessWidget {
  const DefNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 56.0,
        decoration: const BoxDecoration(color: Theme_req.offWhite),
        padding: Theme_req.defaultPadding_navBar,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              "https://s3-alpha-sig.figma.com/img/9a2e/d58e/aa7d7d387d8aedeaf7086c75f7aafc8c?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DfE9enMovUN3oToDRbl71KeYop~Pez6XfXbm4pYGZ~UHNHANZlpfX2IunwEyn7Qbhb5eAnvWEcwwIqFcFp4Mc1YFQso5iYJQb4H0jbRSpy3GjK1Rtd8ir1ysEaghTkPLrx7Zn~zjgNeTIE4k59-~TopZohxpQRIH51AzTtQiiIPZNCLyctGftEK-V1AaNWzoUFexCm1kup-q8J33BE9jVXqwzvIzVNVh2yFI5rLPZa9fYo95ShVfoHa4LiQCQiPK7i0tEyos-HANJ3iiAXlRHbkZEZQ~07WQdZ54VQ3iwRlSqCHHBK~Y9eQ1Dqtf9pgFxMtHBkJsMQ81GYzI0yXTAg__",
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
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(4.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    filled: true,
                    fillColor: Colors.black,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
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
            TextButton(
              // clipBehavior: Clip.antiAliasWithSaveLayer,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", ModalRoute.withName("/"));
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  elevation: WidgetStateProperty.all<double>(0),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000)))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8),
                child: Text(
                  "  LOGIN  ",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/signup", ModalRoute.withName("/"));
              },
              clipBehavior: Clip.antiAliasWithSaveLayer,
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Theme_req.piechart_outer),
                  elevation: WidgetStateProperty.all<double>(0),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000)))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8),
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}