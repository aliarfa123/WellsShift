import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/support_group/custom_list_tile.dart';

class SupportGroups extends StatelessWidget {
  SupportGroups({Key? key}) : super(key: key);
  TextEditingController messageController = TextEditingController();

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
                        "Abeer, our support works for you!",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Text(
                        "Build authentic connect with others :)",
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
                      customListTile(
                        width,
                        height,
                        "assets/icons/Rejection1.png",
                        "Rejection",
                        "How to deal with Rejection?",
                        Color.fromRGBO(250, 251, 255, 1),
                        Color.fromRGBO(3, 100, 173, 1),
                        Color.fromRGBO(11, 111, 186, 1),
                      ),
                      customListTile(
                        width,
                        height,
                        "assets/icons/bg.png",
                        "Self-Worthiness",
                        "How to boost your self-worthiness?",
                        Color.fromRGBO(250, 251, 255, 1),
                        Color.fromRGBO(3, 100, 173, 1),
                        Color.fromRGBO(11, 111, 186, 1),
                      ),
                      customListTile(
                        width,
                        height,
                        "assets/icons/bg2.png",
                        "Appreciation",
                        "Does appreciation shape your future?",
                        Color.fromRGBO(250, 251, 255, 1),
                        Color.fromRGBO(3, 100, 173, 1),
                        Color.fromRGBO(11, 111, 186, 1),
                      ),
                      customListTile(
                        width,
                        height,
                        "assets/icons/bg3.png",
                        "Serving Beliefs",
                        "How to love unconditinally?",
                        Color.fromRGBO(250, 251, 255, 1),
                        Color.fromRGBO(3, 100, 173, 1),
                        Color.fromRGBO(11, 111, 186, 1),
                      ),
                      customListTile(
                        width,
                        height,
                        "assets/icons/bg4.png",
                        "Unconditional Love",
                        "How to love unconditinally?",
                        Color.fromRGBO(250, 251, 255, 1),
                        Color.fromRGBO(3, 100, 173, 1),
                        Color.fromRGBO(11, 111, 186, 1),
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
