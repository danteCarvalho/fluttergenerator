
import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'lista_mensalidades_store.dart';

class ListaMensalidadesPage extends StatefulWidget {
  final String title;
  const ListaMensalidadesPage({Key? key, this.title = 'ListaMensalidades'}) : super(key: key);
  @override
  ListaMensalidadesPageState createState() => ListaMensalidadesPageState();
}
class ListaMensalidadesPageState extends State<ListaMensalidadesPage> {
  final ListaMensalidadesStore store = Modular.get();
  
  @override
  void initState() {
    super.initState();
    store.init();
  }

  @override
  Widget build(BuildContext context) {

    var elevatedButton = ElevatedButton(child: const Text("Gerar pagamento"),onPressed: ()async{
      store.iniciarPagamento();

    },);
    
     var listView = Observer(
           builder: (context) {
             var objs = store.mensalidades;
             if (objs == null) {
               return Container();
             }
             var listView = ListView.separated(
               itemBuilder: (context, index) {
                 var pagamentoSistema = objs[index];

                 Text valor = Text(pagamentoSistema.valor.toString());
                 Text data = Text(pagamentoSistema.dataCriacao!.format("dd-MM-yyyy HH:mm"));
                 Text status = Text(pagamentoSistema.pago!?"Sim":"Não");
                  List<Widget> rowWidgets = [];
                          var row = Row(
                            mainAxisSize: MainAxisSize.min,
                            children: rowWidgets,
                          );
                 rowWidgets.add(valor);
                 rowWidgets.add(data);
                 rowWidgets.add(status);
                 return const Text("a");
               },
               separatorBuilder: (context, index) {
                 return const Divider();
               },
               itemCount: objs.length,
               shrinkWrap: true,
               physics: const NeverScrollableScrollPhysics(),
             );
             return listView;
           },
         );
    
    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );
     columnWidgets.add(elevatedButton);
     columnWidgets.add(listView);
    return Scaffold(
      body: SingleChildScrollView(
          child: Card(
        child: column,
      )),
    );
  }
}


