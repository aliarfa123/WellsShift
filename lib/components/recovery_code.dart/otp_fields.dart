import 'package:flutter/material.dart';

class OtpInput extends StatefulWidget {
  final double height;
  final double width;
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.height, this.width, this.controller, this.autoFocus,
      {Key? key})
      : super(key: key);

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height * 0.05,
      width: widget.width * 0.13,
      child: TextField(
        autofocus: widget.autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: widget.controller,
        maxLength: 1,
        style: const TextStyle(
          color: Color.fromRGBO(132, 175, 209, 1),
          fontSize: 20,
        ),
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
            hintText: '0',
            hintStyle: TextStyle(
              // color: Colors.black,
              fontSize: 20,
              color: Color.fromRGBO(132, 175, 209, 0.5),
            )),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
