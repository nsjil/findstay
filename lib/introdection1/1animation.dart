// ignore_for_file: camel_case_types


import 'package:find_stay/introdection1/TravelSafty.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstAnimation extends StatefulWidget {
  const firstAnimation({super.key});

  @override
  State<firstAnimation> createState() => _firstAnimationState();
}

class _firstAnimationState extends State<firstAnimation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenSet();
  }

  splashScreenSet() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Travelsafty()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/Imdroduction.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 50,
              left: 30,
              child: Center(
                child: SizedBox(
                  height: 258,
                  width: 286,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome To",
                        style: GoogleFonts.urbanist(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 43,
                        ),
                      ),
                      Text(
                        "Bolu",
                        style: GoogleFonts.urbanist(
                            color: const Color.fromARGB(255, 26, 182, 92),
                            fontWeight: FontWeight.w700,
                            fontSize: 96),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 40,
              left: 30,
              child: Text(
                "The Best Hotels Bookthigs in the century to\n accompany your vecation",
                style: GoogleFonts.urbanist(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}
