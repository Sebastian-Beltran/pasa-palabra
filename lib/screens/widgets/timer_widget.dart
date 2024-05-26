import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pasa_palabra/ui/styles.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget>
    with SingleTickerProviderStateMixin {
  late Timer _timer;
  late AnimationController _controller;
  late Animation<Color?> _animation;

  final int _totalDuration = 6; // Duración total en segundos
  final int _updateInterval = 100; // Intervalo de actualización en milisegundos

  double _progress = 0;
  int _secondsRemaining = 60;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: _updateInterval), (timer) {
      setState(() {
        _progress += _updateInterval / (_totalDuration * 1000);
        if (_progress >= 1.0) {
          _progress = 1.0;
          timer.cancel();
        }
        _secondsRemaining =
            ((_totalDuration * 1000 * (1 - _progress)) / 1000).ceil();
      });
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = ColorTween(begin: CustomColor.errorRed, end: CustomColor.grey)
        .animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color progressBarColor =
        _progress >= 1.0 ? _animation.value! : CustomColor.aquamarineGreen;
    return CustomPaint(
      painter: BorderPainter(progress: _progress, color: progressBarColor),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            '$_secondsRemaining',
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

class BorderPainter extends CustomPainter {
  final double progress;
  final Color color;

  BorderPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    double radius = 100.0;
    double borderWidth = 10.0;

    Paint backgroundPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    Paint progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..strokeCap = StrokeCap.round;

    // Dibuja el fondo del borde
    canvas.drawCircle(Offset(width / 2, height / 2), radius, backgroundPaint);

    // Dibuja el progreso del borde
    double startAngle = -pi / 2; // -90 grados en radianes
    double sweepAngle = 2 * pi * progress; // Ángulo completo en radianes
    canvas.drawArc(
      Rect.fromCircle(center: Offset(width / 2, height / 2), radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
