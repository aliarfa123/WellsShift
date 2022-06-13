import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/recover_password/text_field_with_email_box.dart';

// class ResetPassowrd extends StatefulWidget {
//   const ResetPassowrd({Key? key}) : super(key: key);

//   @override
//   State<ResetPassowrd> createState() => _ResetPassowrdState();
// }

//

// class _ResetPassowrdState extends State<ResetPassowrd> {
// }

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  TextEditingController password_controller = TextEditingController();

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color.fromRGBO(187, 223, 250, 1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.03,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: backButtonWithText(
                              context, width, "Recovery code")),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Reset Password",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Your password should contain:",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Text(
                        "  \u2022 4 characters at least",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        "  \u2022 One uppercase at least",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      const Text(
                        "  \u2022 Contain numbers",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.035,
                      ),
                      textfieldWithEmailBox(
                          height: height,
                          width: width,
                          text: 'Password',
                          hintText:
                              '\u2022\u2022\u2022\u2022\u2022\u2022\u2022',
                          borderColor:
                              Color.fromRGBO(132, 175, 209, 0.75), //borderColor
                          backgroundColor: Color.fromRGBO(
                              231, 245, 247, 1), //backgroundColor
                          textColor:
                              Color.fromRGBO(110, 158, 194, 1), //textColor
                          hintTextColor:
                              Color.fromRGBO(132, 175, 209, 1), //hintTextColor
                          emailController: password_controller,
                          is_password: true),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      expandedButton(
                          height,
                          Color.fromRGBO(3, 100, 173, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                          'Reset password',
                          '/',
                          "")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
