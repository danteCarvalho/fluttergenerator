import 'package:dart_date/dart_date.dart';
import 'package:dartutils/dartutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import '../../outros/metodos_estaticos.dart';
import 'lista_mensalidades_store.dart';

class ListaMensalidadesPage extends StatefulWidget {

  const ListaMensalidadesPage({super.key});

  @override
  ListaMensalidadesPageState createState() => ListaMensalidadesPageState();
}

class ListaMensalidadesPageState extends State<ListaMensalidadesPage> {
  final ListaMensalidadesStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }

  @override
  Widget build(BuildContext context) {
    var botao = Observer(
      builder: (context) {
        var usuario = store.app.usuario;
        if (usuario == null) {
          return Container();
        }
        Function()? function;
        var dataPagamento = usuario.dataPagamento;
        if (dataPagamento == initialTime || dataPagamento.differenceInDays(DateTime.now()) <= 5) {
          function = store.iniciarPagamento;
        }
        var elevatedButton = ElevatedButton(
          onPressed: function,
          child: const Text("Gerar pagamento"),
        );
        return elevatedButton;
      },
    );

    var tabela = Observer(
      builder: (context) {
        var objs = store.mensalidades;
        List<DataColumn> columns = [];
        columns.add(const DataColumn(
          label: Text("Valor"),
        ));
        columns.add(const DataColumn(
          label: Text("Data criado"),
        ));
        columns.add(const DataColumn(
          label: Text("Data confirmado"),
        ));
        columns.add(const DataColumn(
          label: Text("Pago"),
        ));
        List<DataRow> rows = [];
        for (var pagamentoSistema in objs) {
          List<DataCell> cells = [];
          var dataRow = DataRow(cells: cells,onSelectChanged: (value) {
            store.mostrarQrcode(pagamentoSistema);
          },);
          var valor = DataCell(Text(pagamentoSistema.valor.toString()));
          var dataCriacao = DataCell(Text(aQuantoTempo(pagamentoSistema.dataCriacao)));
          var dataConfirmado = pagamentoSistema.dataConfirmado;
          var dataConfirmado2 = DataCell(Text(dataConfirmado == initialTime ? "" : aQuantoTempo(dataConfirmado)));
          var pago = DataCell(Text(pagamentoSistema.pago ? "Sim" : "Não"));
          cells.add(valor);
          cells.add(dataCriacao);
          cells.add(dataConfirmado2);
          cells.add(pago);
          rows.add(dataRow);
        }
        var dataTable = SizedBox(
          width: porcentagemLargura(context, 90),
          child: DataTable(
            showCheckboxColumn: false,
            columns: columns,
            rows: rows,
          ),
        );
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: dataTable,
        );
      },
    );

    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: columnWidgets,
    );
    columnWidgets.add(botao);
    columnWidgets.add(tabela);


    return store.app.popScope(Scaffold(
      body: SingleChildScrollView(
          child: Card(
            color: Colors.red,
            child: column,
          )),
    ), context);


  }
}
