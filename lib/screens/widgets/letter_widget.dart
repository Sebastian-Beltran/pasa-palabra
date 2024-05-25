import 'package:flutter/material.dart';
import 'package:pasa_palabra/ui/styles.dart';

class LetterWidget extends StatelessWidget {
  const LetterWidget({
    required this.letter,
    this.color = CustomColor.secondaryColor,
    super.key,
  });

  final String letter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(80.0), // Esquinas redondeadas
        ),
        child: Center(
          child: Text(
            letter,
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
