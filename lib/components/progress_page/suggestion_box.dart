import 'package:flutter/material.dart';

class suggestions extends StatefulWidget {
  final double height;
  final double width;
  final String filename;
  final String text;
  suggestions(
      {Key? key,
      required this.height,
      required this.width,
      required this.filename,
      required this.text})
      : super(key: key);

  @override
  State<suggestions> createState() => _suggestionsState();
}

class _suggestionsState extends State<suggestions> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.6),
                offset: const Offset(2.5, 2.5),
                blurRadius: 16,
              ),
            ],
          ),
          child: Image.asset(
            widget.filename,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          left: 5,
          bottom: 10,
          // alignment: Alignment.topLeft,
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 18.66666,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

// Widget suggestions(double height, double width, String filename, String text) {
//  }
