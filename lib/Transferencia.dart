 class Transferencia {
  final double _valor;
  final int _numeroConta;
  final DateTime _horaTransacao;

  Transferencia(this._valor, this._numeroConta, this._horaTransacao);

  DateTime get horaTransacao => _horaTransacao;

  int get numeroConta => _numeroConta;

  double get valor => _valor;

  @override
  String toString() {
    return 'Transferencia{_valor: $_valor, _numeroConta: $_numeroConta, _horaTransacao: $_horaTransacao}';
  }


 }