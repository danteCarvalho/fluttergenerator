import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'menu_lateral_store.dart';

class MenuLateralWidget extends StatefulWidget {
  const MenuLateralWidget({super.key});

  @override
  MenuLateralWidgetState createState() => MenuLateralWidgetState();
}

class MenuLateralWidgetState extends State<MenuLateralWidget> {
  final MenuLateralStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    List menuLinks = [];
    menuLinks.add("");
    menuLinks.add(["/home/","Inicio",Icons.home]);
    menuLinks.add(["/mensalidades/","Mensalidades",Icons.attach_money]);

    var listView = Observer(
      builder: (context) {
        var objs = store.menuLinks?? menuLinks;
        var listView = ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) {
              return const DrawerHeader(child: Text("teste"));
            } else {
              List obj = objs.elementAt(index);
              return ListTile(leading: Icon(obj[2]),title: Text(obj[1]),onTap: (){
                Modular.to.popUntil((p0) => false);
                Modular.to.pushReplacementNamed(obj[0]);
                Navigator.pop(context);
              },);
            }
          },
          itemCount: objs.length,
          shrinkWrap: true,
        );
        return listView;
      },
    );

   return Drawer(child: listView,);
  }
}
