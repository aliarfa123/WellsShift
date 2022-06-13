import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

welcomePopupDialog(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                // height: height * 0.3,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // width: width * 0.9,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(250, 251, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            'assets/icons/Group.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Welcome back, Abeer!",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(3, 100, 173, 1),
                        ),
                      ),
                      // style: TextStyle(
                      //   fontSize: 18,
                      //   color: Color.fromRGBO(3, 100, 173, 1),
                      //   fontWeight: FontWeight.w600,
                      //   fontFamily: GoogleFonts.inter(),
                      // ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "Let’s start your check-in",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(3, 100, 173, 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                              // debugPrint('ElevatedButton Clicked');
                            },
                            child: Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                                'Maybe Later',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(2, 143, 197, 1),
                                  ),
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              elevation:
                                  MaterialStateProperty.resolveWith<double>(
                                // As you said you dont need elevation. I'm returning 0 in both case
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return 0.2;
                                  }
                                  return 0.2; // Defer to the widget's default.
                                },
                              ),
                              // elevation: 0.0,
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(250, 251, 255, 1)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            // style: ElevatedButton.styleFrom(shape: SH),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              // debugPrint('ElevatedButton Clicked');
                              Get.toNamed('/delay_check_in');
                            },
                            child: Padding(
                              padding: EdgeInsets.all(13.0),
                              child: Text(
                                'Start now',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromRGBO(2, 143, 197, 1),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  // side: BorderSide(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
