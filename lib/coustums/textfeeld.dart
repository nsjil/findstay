import 'package:flutter/material.dart';

class CounstomTextFeild extends StatelessWidget {
  const CounstomTextFeild({super.key, required this.HiNt, this.ICon});

  final String HiNt;
  final IconButton? ICon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 53,
        width: 355,
        child: TextField(
          decoration: InputDecoration(hintText: HiNt, suffixIcon: ICon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
