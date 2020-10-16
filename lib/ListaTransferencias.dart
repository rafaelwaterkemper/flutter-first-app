import 'package:first_app_flutter/Transferencia.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transferências'),
        ),
        body: ListView(
          children: [
            ItemTransferencia(
              transferencia: Transferencia(150.0, 1524, DateTime.now()),
            ),
            ItemTransferencia(
              transferencia:
              Transferencia(250.0, 1524, DateTime.utc(2020, DateTime.july)),
            ),
            ItemTransferencia(
              transferencia: Transferencia(350.0, 1524, DateTime.now()),
            ),
            ItemTransferencia(
              transferencia: Transferencia(150.0, 1524, DateTime.now()),
            ),
            ItemTransferencia(
              transferencia:
              Transferencia(250.0, 1524, DateTime.utc(2020, DateTime.july)),
            ),
            ItemTransferencia(
              transferencia: Transferencia(350.0, 1524, DateTime.now()),
            )
          ],
        ));
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia({Transferencia transferencia, Key key})
      : _transferencia = transferencia,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Saldo'),
                subtitle: Text(_transferencia.valor.toString()),
              ),
            ),
            Container(
              width: 200, //pixels onde vai startar o container
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 24.0, 0.0),
              child: ListTile(
                title: Text('Data'),
                subtitle: Text(new DateFormat('dd/MM/yyyy')
                    .format(_transferencia.horaTransacao)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


