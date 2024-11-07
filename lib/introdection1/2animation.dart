import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';
import 'package:find_stay/introduction2/animation1.dart';
import 'package:flutter/material.dart';

class SecondAnumation extends StatefulWidget {
  const SecondAnumation({super.key});

  @override
  State<SecondAnumation> createState() => _SecondAnumationState();
}

class _SecondAnumationState extends State<SecondAnumation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenSet();
  }

  splashScreenSet() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpage()));
  }

  final bool loading = false;
  @override
  Widget build(BuildContext context) {
    return BlurryModalProgressHUD(
        inAsyncCall: loading,
        blurEffectIntensity: 4,
        progressIndicator: CircularProgressIndicator(
          color: Colors.white,
        ),
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 26, 182, 92),
            child: Center(child: Image.asset("assets/Group 84.png")),
          ),
        ));
  }
}
