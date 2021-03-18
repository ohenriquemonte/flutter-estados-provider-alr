import 'package:bytebank/components/saldo.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bytebank"),
      ),
      body: Align(
        child: Saldo(),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
