import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:pasa_palabra/controller/letter_controller.dart';
import 'package:pasa_palabra/models/letter_model.dart';
import 'package:pasa_palabra/screens/widgets/letter_widget.dart';
import 'package:pasa_palabra/ui/styles.dart';

class WordWidget extends StatelessWidget {
  WordWidget({
    required this.wordAnswer,
    super.key,
  }) : assert(wordAnswer.length == 5);
  final String wordAnswer;

  final LetterController letterController = Get.put(LetterController());

  @override
  Widget build(BuildContext context) {
    final List<String> letterList = wordAnswer.split('');
    return GetBuilder(
        init: LetterController(),
        builder: (letterState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...letterList.map(
                (e) {
                  return LetterWidget(
                    letterModel: LetterModel(
                      letter: e,
                      colorLetter: getColorLetter(
                        letterState.letterState,
                      ),
                    ),
                  );
                },
              )
            ],
          );
        });
  }

  Color getColorLetter(StateLetterEnum stateLetter) {
    switch (stateLetter) {
      case StateLetterEnum.correct:
        return CustomColor.greenCorrect;
      case StateLetterEnum.error:
        return CustomColor.errorRed;
      case StateLetterEnum.init:
        return CustomColor.secondaryColor;
      default:
        return CustomColor.secondaryColor;
    }
  }
}
