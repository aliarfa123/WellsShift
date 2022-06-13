import 'dart:async';

import 'package:flutter/material.dart';

class timerCounter extends StatefulWidget {
  const timerCounter({Key? key}) : super(key: key);

  @override
  State<timerCounter> createState() => _timerCounterState();
}

class _timerCounterState extends State<timerCounter> {
  Timer? _timer;
  int start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
    // final seconds = strDigits(myDuration.inSeconds.remainder(60));
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "$start sec",
      style: const TextStyle(
        fontSize: 18.666666666666668,
        color: Color.fromRGBO(214, 108, 94, 1),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
