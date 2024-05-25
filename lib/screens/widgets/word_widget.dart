import 'package:flutter/material.dart';
import 'package:pasa_palabra/screens/widgets/letter_widget.dart';

class WordWidget extends StatelessWidget {
  const WordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LetterWidget(
          letter: 'P',
        ),
        LetterWidget(
          letter: 'E',
        ),
        LetterWidget(
          letter: 'R',
        ),
        LetterWidget(
          letter: 'R',
        ),
        LetterWidget(
          letter: 'O',
        ),
      ],
    );
  }
}
