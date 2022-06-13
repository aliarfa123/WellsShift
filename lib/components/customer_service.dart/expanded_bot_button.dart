import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget botChatButton(double width, Color color, Color borderColor,
    Color textColor, String text, String route, String data) {
  return Row(
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(route, arguments: data);
          },
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: width * 0.05,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              color,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: borderColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
