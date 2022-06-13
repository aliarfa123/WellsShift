import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget expandedButton(double height, Color backgroundColor, Color color,
    String text, String route, String data) {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            // debugPrint('ElevatedButton Clicked');
            Get.toNamed(route, arguments: data);
          },
          child: Padding(
            padding: EdgeInsets.all(height * 0.015),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // side: BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
