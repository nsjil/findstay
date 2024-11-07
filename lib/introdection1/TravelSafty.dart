
import 'package:find_stay/introdection1/findHotels.dart';
import 'package:find_stay/introduction2/animation1.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Travelsafty extends StatelessWidget {
  const Travelsafty({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 425,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/Rectangle 12@2x.png"),
          ),
          Center(
            child: Text(
              "       Travel Safty,\n Comfortably,& Easly",
              style:
                  GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 32),
            ),
          ),
          const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et\n                            dolore magna aliqua."),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>secondsFINDhotel()));
            },
            child: Container(
              height: 55,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: const Color.fromARGB(255, 26, 182, 92)),
              child: Center(
                child: Text(
                  "Next",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) => secondpage()));},
            child: Container(
              height: 55,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: const Color.fromARGB(255, 232, 246, 239)),
              child: Center(
                child: Text(
                  "Skip",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.green),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
