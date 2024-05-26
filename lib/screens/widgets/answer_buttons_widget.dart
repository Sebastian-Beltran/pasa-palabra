import 'package:flutter/material.dart';
import 'package:pasa_palabra/screens/widgets/button_widget.dart';
import 'package:pasa_palabra/ui/styles.dart';

class AnswerButtons extends StatelessWidget {
  const AnswerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(icon: Icons.check, color: CustomColor.greenCorrect),
        ButtonWidget(
            icon: Icons.navigate_next, color: CustomColor.aquamarineGreen),
        ButtonWidget(icon: Icons.close, color: CustomColor.errorRed),
      ],
    );
  }
}
