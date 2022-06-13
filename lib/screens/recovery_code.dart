import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/recovery_code.dart/otp_fields.dart';
import 'package:wellshift/components/recovery_code.dart/timer_counter.dart';

class RecoveryCode extends StatelessWidget {
  RecoveryCode({Key? key}) : super(key: key);
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var email = Get.arguments;
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
                              context, width, "Recover password")),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Recovery Code",
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
                        "Recovery code has been sent to:",
                        style: TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "$email",
                        style: const TextStyle(
                          fontSize: 18.666666666666668,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(231, 245, 247, 1),
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(132, 175, 209, 0.75),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OtpInput(height, width, _fieldOne, true),
                              OtpInput(height, width, _fieldTwo, false),
                              OtpInput(height, width, _fieldThree, false),
                              OtpInput(height, width, _fieldFour, false),
                              OtpInput(height, width, _fieldFive, false),
                              OtpInput(height, width, _fieldSix, false),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      expandedButton(
                          height,
                          Color.fromRGBO(3, 100, 173, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                          'Submit Code',
                          '/reset_password',
                          ''),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Didn’t get the code? ",
                            style: TextStyle(
                              fontSize: 18.666666666666668,
                              color: Color.fromRGBO(36, 36, 36, 1),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          timerCounter()
                        ],
                      )
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
