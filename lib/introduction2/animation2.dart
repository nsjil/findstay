import 'package:find_stay/sighnup/letsUin.dart';
import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({super.key});

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreenSet();
  }

  SplashScreenSet() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Letsuin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 252, 255, 253),
        child: Center(child: Image.asset("assets/logo2.png")),
      ),
    );
  }
}
