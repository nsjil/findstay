import 'package:flutter/material.dart';

class DropdownBAr extends StatefulWidget {
  const DropdownBAr({super.key,required this.HinT,required this.lists});
 final List<String> lists;
  
  final String HinT;

  @override
  State<DropdownBAr> createState() => _DropdownBArState();
}

class _DropdownBArState extends State<DropdownBAr> {
  @override
  Widget build(BuildContext context) {
    String? dropdownvalue;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 45,
        width: 359,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: DropdownButton(
            underline: Container(
              color: Colors.white,
            ),
            isExpanded: true,
            hint: Text(widget.HinT),
            items: widget.lists
                .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            value: dropdownvalue,
            onChanged:  (String? value) {
                        setState(() {
                          dropdownvalue = value;
                        });
                      }
           
            ),
      ),
    );
  }
}