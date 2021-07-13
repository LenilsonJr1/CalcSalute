import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  String altura = '';
  String peso = '';

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
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 10,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  altura = text;
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
                  peso = text;
                  print(peso);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Peso'),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/result');
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
