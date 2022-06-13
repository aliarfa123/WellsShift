import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/buttons/skip_button.dart';
import 'package:wellshift/components/message_box/message_box.dart';

// class DelayCheckIn extends StatefulWidget {
//   const DelayCheckIn({Key? key}) : super(key: key);

//   @override
//   State<DelayCheckIn> createState() => _DelayCheckInState();
// }

// class _DelayCheckInState extends State<DelayCheckIn> {
//   }
// }
class DelayCheckIn extends StatelessWidget {
  DelayCheckIn({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();
  @override
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
                          child: backButtonWithText(context, width, "Back")),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        "Still, want to delay your daily check-in?",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      const Text(
                        "Tell us why to delay your check-in",
                        textAlign: TextAlign.left,
                        style: TextStyle(
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
                          color: Color.fromRGBO(250, 251, 255, 1),
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(3, 100, 173, 0.4),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: messageBox(
                                    messageController: messageController,
                                    textColor: Color.fromRGBO(1, 40, 69, 1),
                                    hintColor: Color.fromRGBO(214, 214, 214, 1),
                                    hintText: 'What is in your mind...',
                                    maxLines: 3,
                                    minLines: 3),
                              ),
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
                          'Send',
                          '/lets_get_started',
                          ''),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          skipButton(
                              "Skip",
                              const Color.fromRGBO(232, 145, 51, 1),
                              FontWeight.w600,
                              '/'),
                        ],
                      ),
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
