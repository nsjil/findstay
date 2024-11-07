import 'package:find_stay/coustums/dropdownBar.dart';
import 'package:find_stay/coustums/textfeeld.dart';
import 'package:find_stay/sighnup/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filleprofil extends StatefulWidget {
  const Filleprofil({super.key});

  @override
  State<Filleprofil> createState() => _FilleprofilState();
}

class _FilleprofilState extends State<Filleprofil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "fill your profil",
            style:
                GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CounstomTextFeild(HiNt: "Full Name"),
          CounstomTextFeild(HiNt: "Nick Name"),
          CounstomTextFeild(
              HiNt: "Date Of Birth",
              ICon: IconButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2024),
                      initialDate: DateTime.now());
                },
                icon: Icon(Icons.date_range_outlined),
              )),
          CounstomTextFeild(
            HiNt: "Email",
            ICon:
                IconButton(onPressed: () {}, icon: Icon(Icons.email_outlined)),
          ),
          CounstomTextFeild(HiNt: "Phone Number"),
          DropdownBAr(HinT: "Gender", lists: ["Male", "Female", "Others"]),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
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
        ],
      ),
    );
  }
}
