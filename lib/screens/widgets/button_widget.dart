import 'package:flutter/material.dart';
import 'package:pasa_palabra/ui/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.icon,
    required this.color,
    required this.onPress,
    super.key,
  });

  final IconData icon;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(80.0), // Esquinas redondeadas
        ),
        child: Center(
          child: IconButton(
            icon: Icon(icon),
            iconSize: 50,
            color: CustomColor.white,
            onPressed: onPress,
          ),
        ),
      ),
    );
  }
}
