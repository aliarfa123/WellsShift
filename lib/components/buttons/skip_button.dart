import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget skipButton(
    String text, Color color, FontWeight fontWeight, String route) {
  return GestureDetector(
    onTap: () {
      Get.toNamed(route);
    },
    child: Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
        fontWeight: fontWeight,
      ),
    ),
  );
}
