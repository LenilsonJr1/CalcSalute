import 'package:calc_salute/app_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(type: MaterialType.transparency, child: AppWidget());
  }
}
