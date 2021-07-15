import 'package:flutter/material.dart';
import 'home_page.dart';
import 'ImcResult.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, brightness: Brightness.dark),
      routes: {
        '/': (context) => HomePage(),
        '/result': (context) => ImcResult(
              ValorImc: '',
            ),
      },
    );
  }
}
