import 'package:bytebank/models/transferencias.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final String _titulo = 'Últimas Transferências';

class UltimasTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        _titulo,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      Consumer<Transferencias>(
        builder: (context, transferencias, child) {
          final _ultimasTransferencias =
              transferencias.transferencias.reversed.toList();
          final int _quantidade = transferencias.transferencias.length;
          int tamanho = 2;

          if (_quantidade == 0) {
            return SemTransferenciaCadastrada();
          }

          if (_quantidade < 3) {
            tamanho = _quantidade;
          }

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: tamanho,
            shrinkWrap: true,
            itemBuilder: (context, indice) {
              return ItemTransferencia(_ultimasTransferencias[indice]);
            },
          );
        },
      ),
      RaisedButton(
        child: Text('Ver todas as transferências'),
        color: Colors.green,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ListaTransferencias();
          }));
        },
      )
    ]);
  }
}

class SemTransferenciaCadastrada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          'Você ainda não realizou nenhuma transferências.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
