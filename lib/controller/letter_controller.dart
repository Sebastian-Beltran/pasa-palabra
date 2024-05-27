import 'package:get/get_state_manager/get_state_manager.dart';

enum StateLetterEnum { init, correct, error }

class LetterController extends GetxController {
  StateLetterEnum stateLetter = StateLetterEnum.init;
  StateLetterEnum get letterState => stateLetter;

  String letter = '';
  String get wordState => letter;

  void answerLetter({required StateLetterEnum answer}) {
    stateLetter = answer;
    update();
  }

  void wordStateManager({required String word}) {
    List<String> letterList = word.split('');
    letter = letterList.first;
  }
}
