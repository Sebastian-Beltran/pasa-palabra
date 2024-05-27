import 'package:flutter/material.dart';
import 'package:pasa_palabra/ui/styles.dart';

class LetterModel {
  const LetterModel({
    required this.letter,
    this.colorLetter = CustomColor.secondaryColor,
  });
  final String letter;
  final Color colorLetter;
}
