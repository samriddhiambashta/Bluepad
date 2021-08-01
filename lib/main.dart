import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(Bluepad());

class Bluepad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
