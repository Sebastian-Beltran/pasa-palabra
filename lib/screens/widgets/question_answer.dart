import 'package:flutter/material.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '¿Cuál es la capital de Francia?',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Respuesta',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          'París',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
