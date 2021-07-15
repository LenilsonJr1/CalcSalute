import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImcResult extends StatelessWidget {
  int counter = 45;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CalcSalute'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Seu IMC é: arguments.ValorIMC',
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                )
              ],
            ),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('IMC',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('CATEGORIA',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('<18,5')),
                  DataCell(Text('Abaixo do peso')),
                ]),
                DataRow(cells: [
                  DataCell(Text('18,25 - 24,9')),
                  DataCell(Text('Peso Normal')),
                ]),
                DataRow(cells: [
                  DataCell(Text('25 - 29,9')),
                  DataCell(Text('Sobrepeso')),
                ]),
                DataRow(cells: [
                  DataCell(Text('30 - 34,9')),
                  DataCell(Text('Obesidade Grau 1')),
                ]),
                DataRow(cells: [
                  DataCell(Text('35 - 39,9')),
                  DataCell(Text('Obesidade Grau 2')),
                ]),
                DataRow(cells: [
                  DataCell(Text('>= 40')),
                  DataCell(Text('Obesidade Grau 3 ou Mórbida')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
