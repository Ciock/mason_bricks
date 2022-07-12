import 'package:flutter/material.dart';

part 'button.style.dart';

class Button extends StatelessWidget {
  final ButtonType type;

  const Button({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: ButtonStyle.height,
        width: ButtonStyle.width,
        color: type.color,
      );
}
