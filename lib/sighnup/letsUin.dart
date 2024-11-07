// ignore_for_file: file_names

import 'package:find_stay/sighnup/creatYourAccount.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Letsuin extends StatefulWidget {
  const Letsuin({super.key});

  @override
  State<Letsuin> createState() => _LetsuinState();
}

class _LetsuinState extends State<Letsuin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
              child: Text(
            "Let,s You in",
            style:
                GoogleFonts.urbanist(fontSize: 45, fontWeight: FontWeight.w700),
          )),
          const SizedBox(
            height: 100,
          ),
          Container(
            height: 53,
            width: 328,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Facebook.png"),
                Text(
                  "Continue With Facebook",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 53,
            width: 328,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Google.png"),
                Text(
                  "Continue With Google",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 53,
            width: 328,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Vector.png"),
                Text(
                  "Continue With Apple",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 17),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width / 4,
                color: Colors.grey,
              ),
              const Text("  or  "),
              Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width / 4,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Creatyouraccount()));
            },
            child: Container(
              height: 53,
              width: 328,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                color: const Color.fromARGB(255, 26, 182, 92),
              ),
              child: Center(
                child: Text(
                  "sign in with password",
                  style: GoogleFonts.urbanist(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "sign up",
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromARGB(255, 26, 182, 92),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
