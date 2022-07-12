part of '{{name.snakeCase()}}.widget.dart';

enum {{name.pascalCase()}}Type { enable, disable }

extension {{name.pascalCase()}}TypeExt on {{name.pascalCase()}}Type {
  Color get color => {
        {{name.pascalCase()}}Type.enable: Colors.red,
        {{name.pascalCase()}}Type.disable: Colors.grey,
      }[this]!;
}

class {{name.pascalCase()}}Style {
  {{name.pascalCase()}}Style._();

  static double height = 100.0;

  static double width = 100.0;
}
