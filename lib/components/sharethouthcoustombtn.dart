import 'package:flutter/material.dart';

// ignore: camel_case_types
class sharethoughtbtn extends StatefulWidget {
  final String btnname;
  const sharethoughtbtn({Key? key, required this.btnname}) : super(key: key);
  @override
  State<sharethoughtbtn> createState() => _sharethoughtbtnState();
}

// ignore: camel_case_types
class _sharethoughtbtnState extends State<sharethoughtbtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xFFF8F9FA),
      ),
      height: 34,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          widget.btnname,
          style: const TextStyle(color: Color(0xFF444D6E), fontSize: 13.0),
        ),
      ),
    );
  }
}
