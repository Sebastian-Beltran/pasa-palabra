import 'package:flutter/material.dart';
import 'package:pasa_palabra/screens/widgets/answer_buttons_widget.dart';
import 'package:pasa_palabra/screens/widgets/question_answer.dart';
import 'package:pasa_palabra/screens/widgets/timer_widget.dart';
import 'package:pasa_palabra/screens/widgets/word_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Palabra',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 30),
            WordWidget(
              wordAnswer: 'PERRO',
            ),
            const SizedBox(height: 30),
            const TimerWidget(),
            const SizedBox(height: 100),
            const QuestionAnswer(),
            const SizedBox(height: 35),
            AnswerButtons(),
          ],
        ),
      ),
    );
  }
}
