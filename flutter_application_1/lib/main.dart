import 'package:flutter/cupertino.dart';

void main() {
  runApp(const Center(
      child: Text(
    "Hola Flutter",
    textDirection: TextDirection.ltr,
    style: TextStyle(color: CupertinoColors.activeOrange),
  )));
}
