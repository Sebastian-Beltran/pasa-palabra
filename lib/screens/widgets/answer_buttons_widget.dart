import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:pasa_palabra/controller/letter_controller.dart';
import 'package:pasa_palabra/screens/widgets/button_widget.dart';
import 'package:pasa_palabra/ui/styles.dart';

class AnswerButtons extends StatelessWidget {
  AnswerButtons({super.key});

  final LetterController letterController = Get.put(LetterController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
          icon: Icons.check,
          color: CustomColor.greenCorrect,
          onPress: () {
            return letterController.answerLetter(
              answer: StateLetterEnum.correct,
            );
          },
        ),
        ButtonWidget(
          icon: Icons.navigate_next,
          color: CustomColor.aquamarineGreen,
          onPress: () {
            print('SIGUIENTE PREGUNTA, SIGUIENTE LETRA, pasapalabra');
          },
        ),
        ButtonWidget(
          icon: Icons.close,
          color: CustomColor.errorRed,
          onPress: () {
            print('PIERDE EL JUEGO');
          },
        ),
      ],
    );
  }
}
