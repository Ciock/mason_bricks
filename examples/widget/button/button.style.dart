part of 'button.widget.dart';

enum ButtonType { enable, disable }

extension ButtonTypeExt on ButtonType {
  Color get color => {
        ButtonType.enable: Colors.red,
        ButtonType.disable: Colors.grey,
      }[this]!;
}

class ButtonStyle {
  ButtonStyle._();

  static double height = 100.0;

  static double width = 100.0;
}
