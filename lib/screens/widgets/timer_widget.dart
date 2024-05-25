import 'package:flutter/material.dart';
import 'package:pasa_palabra/ui/styles.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.circular(1000.0),
        border: Border.all(
          color: CustomColor.aquamarineGreen,
          width: 10,
        ),
      ),
      child: const Center(
        child: Text(
          '01:00',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
