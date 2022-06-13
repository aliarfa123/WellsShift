import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/buttons/skip_button.dart';
import 'package:wellshift/components/progress_page/suggestion_box.dart';
import 'package:wellshift/components/progress_page/support_and_contact_buttons.dart';
import 'package:wellshift/popups/welcome_popup.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => welcomePopupDialog(context));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            padding: const EdgeInsets.fromLTRB(8, 20, 8, 5),
            height: height,
            width: width,
            color: const Color.fromRGBO(187, 223, 250, 1),
            // color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hello Abeer, what do you like to work on today?",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Would you like to talk to someone?",
                        style: TextStyle(
                          fontSize: 21.333333333333332,
                          color: Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  supportAndContact(height, width),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Suggested for you",
                        style: TextStyle(
                          fontSize: 21.333333333333332,
                          color: Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Wrap(
                    children: [
                      suggestions(
                          height: height,
                          width: width,
                          filename: 'assets/icons/Rectangle 12.png',
                          text: 'Meditation'),
                      SizedBox(
                        width: width * 0.04,
                        height: height * 0.2,
                      ),
                      suggestions(
                          height: height,
                          width: width,
                          filename: 'assets/icons/Rectangle 13.png',
                          text: 'Action item'),
                    ],
                  ),
                  SizedBox(
                    height: width * 0.04,
                  ),
                  Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/music');
                        },
                        child: suggestions(
                            height: height,
                            width: width,
                            filename: 'assets/icons/Rectangle 14.png',
                            text: 'Music'),
                      ),
                      SizedBox(
                        width: width * 0.04,
                        height: height * 0.2,
                      ),
                      suggestions(
                          height: height,
                          width: width,
                          filename: 'assets/icons/Rectangle 15.png',
                          text: 'Articles')
                    ],
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  skipButton("Skip", const Color.fromRGBO(232, 145, 51, 1),
                      FontWeight.w600, '/delay_check_in'),
                  // const Text(
                  //   "Skip",
                  //   style: TextStyle(
                  //     fontSize: 21.333333333333332,
                  //     color: Color.fromRGBO(232, 145, 51, 1),
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
