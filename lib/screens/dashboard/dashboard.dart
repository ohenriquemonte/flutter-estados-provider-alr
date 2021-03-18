import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bytebank"),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          Consumer<Saldo>(
            builder: (context, saldo, child) {
              return RaisedButton(
                child: Text('Adiciona'),
                onPressed: () {
                  saldo.subtrai(10);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
