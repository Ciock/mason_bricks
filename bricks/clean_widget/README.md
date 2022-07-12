# Clean Widget

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create a new widget with a clean style definition.

A `.widget` file to define the structure with a separeted  `.style` file, like HTML and CSS do.

## How to use 🚀

```
mason make clean_widget -o path/to/widget
```

## Variables ✨

| Variable | Description            | Default | Type       |
| -------- | ---------------------- | ------- | ---------- |
| `name` | The name of the widget |         | `string` |


## Output

```
|-- name
   |-- name.style.dart
   |-- name.widget.dart
```


### my_button.style.dart

```dart
part of 'my_button.widget.dart';

enum MyButtonType { enable, disable }

extension MyButtonTypeExt on MyButtonType {
  Color get color => {
        MyButtonType.enable: Colors.red,
        MyButtonType.disable: Colors.grey,
      }[this]!;
}

class MyButtonStyle {
  MyButtonStyle._();

  static double height = 100.0;

  static double width = 100.0;
}

```

### my_button.widget.dart

```dart
import 'package:flutter/material.dart';

part 'my_button.style.dart';

class MyButton extends StatelessWidget {
  final MyButtonType type;

  const MyButton({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: MyButtonStyle.height,
        width: MyButtonStyle.width,
        color: type.color,
      );
}

```
