import 'package:find_stay/sighnup/filleProfil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Creatyouraccount extends StatefulWidget {
  const Creatyouraccount({super.key});

  @override
  State<Creatyouraccount> createState() => _CreatyouraccountState();
}

class _CreatyouraccountState extends State<Creatyouraccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              "Creat Your\n Account",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700, fontSize: 45),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Email",
                  hintStyle: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "password",
                  hintStyle: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 16)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 21,
                width: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.green),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Remember me",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w500, fontSize: 16),
              )
            ],
          ),
          // SizedBox(
          //   height: 20,
          // ),
          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Filleprofil()));},
            child: Container(
              height: 53,
              width: 328,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.5),
                  color: const Color.fromARGB(255, 26, 182, 92)),
              child: Center(
                child: Text(
                  "sign up",
                  style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width / 4,
                color: Colors.grey,
              ),
              Text(" or continue with  "),
              Divider(
                color: Colors.grey,
              ),
              Container(
                height: 1.5,
                width: MediaQuery.of(context).size.width / 4,
                color: Colors.grey,
              ),
            ],
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 51,
                width: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 210, 205, 205)),
                    image: DecorationImage(
                        image: AssetImage("assets/Facebook.png"))),
              ),
              Container(
                height: 51,
                width: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 210, 205, 205)),
                    image: DecorationImage(
                        image: AssetImage("assets/Google.png"))),
              ),
              Container(
                height: 51,
                width: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 210, 205, 205)),
                    image: DecorationImage(
                        image: AssetImage("assets/Vector.png"))),
              )
            ],
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You dont have account?",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w400, fontSize: 14),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "sugn up",
                    style: GoogleFonts.urbanist(
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
