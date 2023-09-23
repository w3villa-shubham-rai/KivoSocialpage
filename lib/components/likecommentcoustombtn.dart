import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class likecommentcoustombtn extends StatefulWidget {
  final String likecommentlogoPath;

  const likecommentcoustombtn(
      {Key? key, required this.likecommentlogoPath})
      : super(key: key);
  @override
  State<likecommentcoustombtn> createState() => _sharethoughtbtnState();
}

// ignore: camel_case_types
class _sharethoughtbtnState extends State<likecommentcoustombtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 250, 250),
            borderRadius: BorderRadius.circular(18),
            boxShadow:  const [
              BoxShadow(
                color: Color.fromARGB(224, 197, 197, 199),
                blurRadius: 9.0,
              )
            ]),
        child: SvgPicture.asset(
          widget.likecommentlogoPath,
          fit: BoxFit.scaleDown,
          width: 10,
          height: 10,
        ));
  }
}
