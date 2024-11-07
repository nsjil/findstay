import 'package:find_stay/introduction2/animation2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 550,
                    width: 390,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/discover.png"),
                        
                      ],
                    ),
                  ),
                  Positioned(top: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                            "Lest's\ndiscover\nthe world\nwith us",
                            style: GoogleFonts.urbanist(fontWeight: FontWeight.w700,fontSize: 43,
                            ),
                          ),
                    ))
                ],
              ),
               const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et\n                            dolore magna aliqua."),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Animation2()));
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
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Animation2()));},
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
            ],
          ),
        ),
      ),
    );

  }
}