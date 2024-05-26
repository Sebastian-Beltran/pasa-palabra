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
      body: const Center(
        child: Column(
          children: <Widget>[
            Text(
              'Palabra',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            WordWidget(),
            SizedBox(height: 30),
            TimerWidget(),
            SizedBox(height: 100),
            QuestionAnswer(),
            SizedBox(height: 35),
            AnswerButtons(),
          ],
        ),
      ),
    );
  }
}
