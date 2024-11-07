import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/logo2.png"),
        ),
        title: Text(
          "Bolu",
          style:
              GoogleFonts.urbanist(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/jam_bookmark-minus.png",
              height: 25,
              width: 22,
            ),
          )
        ],
      ),
      body: Flexible(
        child: Column(
          children: [
            Text(
              "Hello,Kezia",
              style:
                  GoogleFonts.urbanist(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: "search",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
            ListView.builder(itemCount: 6,
            scrollDirection: Axis.horizontal,
              itemBuilder:  (context, index) {
              
              return ListTile(title : Text("scsdsdvgh"),);
            },)
          ],
        ),
      ),
    );
  }
}
