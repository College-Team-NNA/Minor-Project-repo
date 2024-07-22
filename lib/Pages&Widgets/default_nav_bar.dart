import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minor_project/UI%20req/Colors_req.dart';

class DefaultNavBar extends StatelessWidget {
  const DefaultNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56.0,
        decoration: const BoxDecoration(color: Theme_req.offWhite),
        child: Padding(
          padding: Theme_req.defaultPadding_navBar,
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://s3-alpha-sig.figma.com/img/9a2e/d58e/aa7d7d387d8aedeaf7086c75f7aafc8c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TXGUUlK7sJE~OFl6-~7xxZoiZQYxVKP2yvQXZMZjDmMewYLmSihXPMpRCrLUXaTgR8nprpXwgJA2M5etURTriLgtDMFaSUkLo7MjR2hwZ6zTzbxFQh5l8aq~Ff4N6BDb3H627zNlHtaw3L-cstCBE80epgFzzUs6-qwMcwOXe0v54VG2bgslxDpp5V1zVL-c7sqBiT7v0acJoeJFokh3vHhxZDDB-nFs4otNqgfF4LL2I7twqpTdjtuvI5hDcO-1N~MfRECtvq1~~QgBfUmJiPulZbrp160UvHKYUjH2zYisuNIKCLXBuG2AmInpIl27SaQIUm69Rg6SZufvfkuTdg__",
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
                      fillColor: Theme_req.black,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 12.0),
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
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  elevation: WidgetStateProperty.all<double>(0),
                ),
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                  elevation: WidgetStateProperty.all<double>(0),
                ),
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}