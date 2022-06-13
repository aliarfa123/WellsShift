import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wellshift/components/app_bar/back_button_with_text.dart';
import 'package:wellshift/components/buttons/expanded_button.dart';
import 'package:wellshift/components/buttons/skip_button.dart';
import 'package:wellshift/components/customer_service.dart/expanded_bot_button.dart';
import 'package:wellshift/components/customer_service.dart/message_box.dart';
import 'package:wellshift/components/message_box/message_box.dart';
import 'package:wellshift/components/recover_password/text_field_with_email_box.dart';

class CustomerService extends StatelessWidget {
  CustomerService({Key? key}) : super(key: key);
  TextEditingController messageSubject = TextEditingController();
  TextEditingController messageContent = TextEditingController();

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
                      Text(
                        "Hello Abeer, Let us know how to help?",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          color: const Color.fromRGBO(3, 100, 173, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      const Divider(
                        color: Color.fromRGBO(3, 100, 173, 0.5),
                        height: 0.01,
                        endIndent: null,
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      // const SizedBox(
                      //   width: double.infinity,
                      //   child:
                      // ),
                      Text(
                        "We would be happy to hear from you, Feel free to tell us what’s in your mind",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: width * 0.045,
                          color: const Color.fromRGBO(20, 124, 203, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),

                      messageBoxCustomerSuccess(
                        height: height,
                        width: width,
                        text: "Name",
                        hintText: "Message subject",
                        borderColor: Color.fromRGBO(110, 158, 194, 1),
                        backgroundColor: Color.fromRGBO(231, 245, 247, 1),
                        textColor: Color.fromRGBO(132, 175, 209, 1),
                        emailController: messageSubject,
                        is_password: false,
                        lines: 1,
                        hintTextColor: Color.fromRGBO(132, 175, 209, 1),
                      ),

                      SizedBox(
                        height: height * 0.03,
                      ),
                      messageBoxCustomerSuccess(
                        height: height,
                        width: width,
                        text: "Content",
                        hintText: "What is in your mind...",
                        borderColor: Color.fromRGBO(110, 158, 194, 1),
                        backgroundColor: Color.fromRGBO(231, 245, 247, 1),
                        textColor: Color.fromRGBO(132, 175, 209, 1),
                        emailController: messageContent,
                        is_password: false,
                        lines: 3,
                        hintTextColor: Color.fromRGBO(132, 175, 209, 1),
                      ),

                      // messageBoxCustomerSuccess(
                      //     height,
                      //     width,
                      //     "Content",
                      //     "What is in your mind...",
                      //     Color.fromRGBO(132, 175, 209, 1),
                      //     Color.fromRGBO(231, 245, 247, 1),
                      //     Color.fromRGBO(110, 158, 194, 1),
                      //     Color.fromRGBO(132, 175, 209, 1),
                      //     messageContent,
                      //     false,
                      //     3),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      // (EmailInputElement.supported)
                      (messageContent.text.isEmpty)
                          ? expandedButton(
                              height,
                              Color.fromRGBO(222, 239, 252, 1),
                              Color.fromRGBO(144, 205, 252, 1),
                              'Send',
                              '/support_groups',
                              '')
                          : expandedButton(
                              height,
                              Color.fromRGBO(3, 100, 173, 1),
                              Color.fromRGBO(255, 255, 255, 1),
                              'Send',
                              '/support_groups',
                              ''),

                      SizedBox(
                        height: height * 0.02,
                      ),
                      botChatButton(
                          width,
                          Color.fromRGBO(187, 223, 250, 1),
                          Color.fromRGBO(3, 100, 173, 1),
                          Color.fromRGBO(3, 100, 173, 1),
                          'Bot Chat',
                          '/',
                          ''),
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

// class CustomerService extends StatefulWidget {
//   const CustomerService({Key? key}) : super(key: key);

//   @override
//   State<CustomerService> createState() => _CustomerServiceState();
// }

// class _CustomerServiceState extends State<CustomerService> {
//   TextEditingController messageSubject = TextEditingController();
//   TextEditingController messageContent = TextEditingController();

//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               color: const Color.fromRGBO(187, 223, 250, 1),
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: height * 0.03,
//                       ),
//                       GestureDetector(
//                           onTap: () {
//                             Get.back();
//                           },
//                           child: backButtonWithText(context, width, "Back")),
//                       SizedBox(
//                         height: height * 0.03,
//                       ),
//                       Text(
//                         "Hello Abeer, Let us know how to help?",
//                         style: TextStyle(
//                           fontSize: width * 0.05,
//                           color: const Color.fromRGBO(3, 100, 173, 1),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       SizedBox(
//                         height: height * 0.025,
//                       ),
//                       const Divider(
//                         color: Color.fromRGBO(3, 100, 173, 0.5),
//                         height: 0.01,
//                         endIndent: null,
//                       ),
//                       SizedBox(
//                         height: height * 0.025,
//                       ),
//                       // const SizedBox(
//                       //   width: double.infinity,
//                       //   child:
//                       // ),
//                       Text(
//                         "We would be happy to hear from you, Feel free to tell us what’s in your mind",
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontSize: width * 0.045,
//                           color: const Color.fromRGBO(20, 124, 203, 1),
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(
//                         height: height * 0.03,
//                       ),

//                       messageBoxCustomerSuccess(
//                         height: height,
//                         width: width,
//                         text: "Name",
//                         hintText: "Message subject",
//                         borderColor: Color.fromRGBO(110, 158, 194, 1),
//                         backgroundColor: Color.fromRGBO(231, 245, 247, 1),
//                         textColor: Color.fromRGBO(132, 175, 209, 1),
//                         emailController: messageSubject,
//                         is_password: false,
//                         lines: 1,
//                         hintTextColor: Color.fromRGBO(132, 175, 209, 1),
//                       ),

//                       SizedBox(
//                         height: height * 0.03,
//                       ),
//                       messageBoxCustomerSuccess(
//                         height: height,
//                         width: width,
//                         text: "Content",
//                         hintText: "What is in your mind...",
//                         borderColor: Color.fromRGBO(110, 158, 194, 1),
//                         backgroundColor: Color.fromRGBO(231, 245, 247, 1),
//                         textColor: Color.fromRGBO(132, 175, 209, 1),
//                         emailController: messageContent,
//                         is_password: false,
//                         lines: 3,
//                         hintTextColor: Color.fromRGBO(132, 175, 209, 1),
//                       ),

//                       // messageBoxCustomerSuccess(
//                       //     height,
//                       //     width,
//                       //     "Content",
//                       //     "What is in your mind...",
//                       //     Color.fromRGBO(132, 175, 209, 1),
//                       //     Color.fromRGBO(231, 245, 247, 1),
//                       //     Color.fromRGBO(110, 158, 194, 1),
//                       //     Color.fromRGBO(132, 175, 209, 1),
//                       //     messageContent,
//                       //     false,
//                       //     3),
//                       SizedBox(
//                         height: height * 0.04,
//                       ),
//                       // (EmailInputElement.supported)
//                       (messageContent.text.isEmpty)
//                           ? expandedButton(
//                               Color.fromRGBO(222, 239, 252, 1),
//                               Color.fromRGBO(144, 205, 252, 1),
//                               'Send',
//                               '/lets_get_started',
//                               '')
//                           : expandedButton(Color.fromRGBO(3, 100, 173, 1),
//                               Color.fromRGBO(255, 255, 255, 1), 'Send', '', ''),

//                       SizedBox(
//                         height: height * 0.02,
//                       ),
//                       botChatButton(
//                           width,
//                           Color.fromRGBO(187, 223, 250, 1),
//                           Color.fromRGBO(3, 100, 173, 1),
//                           Color.fromRGBO(3, 100, 173, 1),
//                           'Bot Chat',
//                           '/',
//                           ''),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
