import 'package:flutter/material.dart';

part '{{name.snakeCase()}}.style.dart';

class {{name.pascalCase()}} extends StatelessWidget {
  final {{name.pascalCase()}}Type type;

  const {{name.pascalCase()}}({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: {{name.pascalCase()}}Style.height,
        width: {{name.pascalCase()}}Style.width,
        color: type.color,
      );
}
