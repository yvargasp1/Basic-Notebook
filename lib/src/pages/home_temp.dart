import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  
  final lista =['Opcion 1', 'Opcion 2','Opcion 3','Opcion 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temporales'),
      ),  
      body: ListView(
        children: _crearItems2(),
      ),
    );
  }

  List<Widget>_crearItems() {
    List<Widget> list =[];
    for(String opc in lista){
      final tempWidget = ListTile(
        title: Text(opc),
      );
      list.add(tempWidget);
      list.add(Divider());
    }
    return list;
  }

  List<Widget> _crearItems2(){
    return  lista.map((item){
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('seleccione'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},

          ),
          Divider(),
        ],
      );
    }).toList();
  }
}