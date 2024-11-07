import 'package:find_stay/introduction2/bestvecation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      splashScreenSet();
    }

    splashScreenSet() async {
      await Future.delayed(
        Duration(seconds: 2),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>vecation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/13 Pro - 8.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 50,
              left: 30,
              child: Center(
                child: Container(
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
