import 'package:flutter/material.dart';

class messageBox extends StatefulWidget {
  final TextEditingController messageController;
  final Color textColor;
  final Color hintColor;
  final String hintText;
  final int maxLines;
  final int minLines;
  messageBox(
      {Key? key,
      required this.messageController,
      required this.textColor,
      required this.hintColor,
      required this.hintText,
      required this.maxLines,
      required this.minLines})
      : super(key: key);

  @override
  State<messageBox> createState() => _messageBoxState();
}

class _messageBoxState extends State<messageBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      controller: widget.messageController,
      obscureText: false,
      style: TextStyle(
        fontSize: 17.333333333333332,
        color: widget.textColor,
        fontWeight: FontWeight.w400,
      ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration.collapsed(
        hintText: widget.hintText,
        border: InputBorder.none,
        hintStyle: TextStyle(
          fontSize: 17.333333333333332,
          color: widget.hintColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
