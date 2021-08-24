import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ImcResult.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double altura = 0;
  double peso = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // img
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 10,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  altura = double.parse(text);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Altura'),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  peso = double.parse(text);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Peso'),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  // alturaDois = alturaDois.toStringAsExponential(1);
                  double ValorIMC = peso / (altura * altura);
                  String valorForm = ValorIMC.toStringAsFixed(1);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ImcResult(
                                ValorImc: valorForm,
                              )));
                },
                child: Text('Calcular'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
