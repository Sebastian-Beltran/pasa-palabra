import 'package:flutter/material.dart';
import 'package:pasa_palabra/models/letter_model.dart';

class LetterWidget extends StatelessWidget {
  const LetterWidget({
    required this.letterModel,
    super.key,
  });

  final LetterModel letterModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: letterModel.colorLetter,
          borderRadius: BorderRadius.circular(80.0), // Esquinas redondeadas
        ),
        child: Center(
          child: Text(
            letterModel.letter,
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
