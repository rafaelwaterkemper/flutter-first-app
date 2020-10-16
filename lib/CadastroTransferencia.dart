import 'package:first_app_flutter/Transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroTransferencia extends StatefulWidget {
  CadastroTransferencia({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CadastroTransferenciaState();
}

class CadastroTransferenciaState extends State<CadastroTransferencia> {
  TextEditingController _controllerNumeroConta;
  TextEditingController _controllerValor;

  void initState() {
    super.initState();
    _controllerNumeroConta = TextEditingController();
    _controllerValor = TextEditingController();
  }

  void dispose() {
    _controllerNumeroConta.dispose();
    _controllerValor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferência')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
              ),
              style: TextStyle(fontSize: 24.0),
              controller: _controllerNumeroConta,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Valor',
                    hintText: '1000.00',
                    icon: Icon(Icons.monetization_on),
                  ),
                  keyboardType: TextInputType.number,
                  controller: _controllerValor,
                  style: TextStyle(fontSize: 24.0),
                ),
              ],
            ),
          ),
          _TransferirButton(_controllerNumeroConta, _controllerValor)
        ],
      ),
    );
  }
}

RaisedButton _TransferirButton(
  TextEditingController controllerNumeroConta,
  TextEditingController controllerValor,
) {
  return RaisedButton(
    child: Text('Transferir'),
    onPressed: () {
      int numeroConta = int.tryParse(controllerNumeroConta.value.text);
      double valor = double.tryParse(controllerValor.value.text);

      if (numeroConta == null || valor == null) {
        print('há valores nulos');
        return;
      }

      final transferencia = Transferencia(valor, numeroConta, DateTime.now());
      print('$transferencia');
    },
    color: Colors.blueAccent,
    textColor: Colors.white,
  );
}
