class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(
    this.valor,
    this.numeroConta,
  );

  String ToStringValor() {
    return 'R\$ $valor';
  }

  String ToStringConta() {
    return 'Conta: $numeroConta';
  }
}
