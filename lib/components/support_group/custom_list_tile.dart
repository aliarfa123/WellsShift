import 'package:flutter/material.dart';

Widget customListTile(
    double width,
    double height,
    String imageName,
    String headingText,
    String descriptionText,
    Color containerBackgroundColor,
    Color headingColor,
    Color descriptionColor) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(250, 251, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      // width: width * 0.9,
      // alignment: Alignment,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageName,
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: height * 0.0025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headingText,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: headingColor,
                      ),
                    ),
                    Flexible(
                      child: Image.asset(
                        "assets/icons/join.png",
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Flexible(
                    child: Text(
                      descriptionText,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: descriptionColor,
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
