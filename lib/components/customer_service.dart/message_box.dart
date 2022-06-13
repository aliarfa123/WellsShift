import 'package:flutter/material.dart';

class messageBoxCustomerSuccess extends StatefulWidget {
  double height;
  double width;
  String text;
  String hintText;
  Color borderColor;
  Color backgroundColor;
  Color textColor;
  Color hintTextColor;
  TextEditingController emailController;
  bool is_password;
  int lines;
  messageBoxCustomerSuccess(
      {Key? key,
      required this.height,
      required this.width,
      required this.text,
      required this.hintText,
      required this.borderColor,
      required this.backgroundColor,
      required this.textColor,
      required this.emailController,
      required this.is_password,
      required this.lines,
      required this.hintTextColor})
      : super(key: key);

  @override
  State<messageBoxCustomerSuccess> createState() =>
      _messageBoxCustomerSuccessState();
}

class _messageBoxCustomerSuccessState extends State<messageBoxCustomerSuccess> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          border: Border.all(
            width: 1.5,
            color: (widget.emailController.text.isEmpty)
                ? widget.borderColor
                : Color.fromRGBO(232, 145, 51, 1),
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
                  fontSize: widget.width * 0.042,
                  color: widget.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: widget.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: TextFormField(
                  enabled: true,
                  controller: widget.emailController,
                  obscureText: widget.is_password,
                  maxLines: widget.lines,
                  minLines: widget.lines,
                  style: TextStyle(
                    fontSize: widget.width * 0.034,
                    color: const Color.fromRGBO(1, 40, 69, 1),
                    fontWeight: FontWeight.w400,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration.collapsed(
                    hintText: widget.hintText,
                    border: InputBorder.none,
                    // enabled: ,
                    hintStyle: TextStyle(
                      fontSize: widget.width * 0.04,
                      color: widget.hintTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget messageBoxCustomerSuccess(
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
//   int lines,
// ) {
  
// }
