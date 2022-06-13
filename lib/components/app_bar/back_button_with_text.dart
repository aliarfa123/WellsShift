import 'package:flutter/material.dart';

Widget backButtonWithText(BuildContext context, double width, String text) {
  return Row(
    children: [
      Image.asset("assets/icons/Vector_back.png"),
      SizedBox(
        width: width * 0.03,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 18.666666,
          color: Color.fromRGBO(194, 106, 10, 1),
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
