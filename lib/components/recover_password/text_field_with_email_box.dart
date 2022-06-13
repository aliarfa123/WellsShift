import 'package:flutter/material.dart';

class textfieldWithEmailBox extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final String hintText;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Color hintTextColor;
  final TextEditingController emailController;
  final bool is_password;
  textfieldWithEmailBox({
    Key? key,
    required this.height,
    required this.width,
    required this.text,
    required this.hintText,
    required this.borderColor,
    required this.backgroundColor,
    required this.textColor,
    required this.hintTextColor,
    required this.emailController,
    required this.is_password,
  }) : super(key: key);

  @override
  State<textfieldWithEmailBox> createState() => _textfieldWithEmailBoxState();
}

class _textfieldWithEmailBoxState extends State<textfieldWithEmailBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: Border.all(
          width: 1.5,
          color: widget.borderColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: widget.width * 0.04,
                color: widget.textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: widget.height * 0.01,
            ),
            TextFormField(
              enabled: true,
              controller: widget.emailController,
              obscureText: widget.is_password,
              style: TextStyle(
                fontSize: 17.333333333333332,
                color: widget.textColor,
                fontWeight: FontWeight.w400,
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration.collapsed(
                hintText: widget.hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 17.333333333333332,
                  color: widget.hintTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget textfieldWithEmailBox(
//   double height,
//   double width,
//   String text,
//   String hintText,
//   Color borderColor,
//   Color backgroundColor,
//   Color textColor,
//   Color hintTextColor,
//   TextEditingController emailController,
//   bool is_password,
// ) {
//   return Container(
//     decoration: BoxDecoration(
//       color: backgroundColor,
//       border: Border.all(
//         width: 1.5,
//         color: borderColor,
//       ),
//       borderRadius: const BorderRadius.all(
//         Radius.circular(10.0),
//       ),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             text,
//             style: TextStyle(
//               fontSize: width * 0.04,
//               color: textColor,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           SizedBox(
//             height: height * 0.01,
//           ),
//           TextFormField(
//             enabled: true,
//             controller: emailController,
//             obscureText: is_password,
//             style: TextStyle(
//               fontSize: 17.333333333333332,
//               color: textColor,
//               fontWeight: FontWeight.w400,
//             ),
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration.collapsed(
//               hintText: hintText,
//               border: InputBorder.none,
//               hintStyle: TextStyle(
//                 fontSize: 17.333333333333332,
//                 color: hintTextColor,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
