
import 'package:arqui_app_class/src/providers/menu_provider.dart';
import 'package:arqui_app_class/src/utils/icon_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),  
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      }
    );
  }

  List<Widget> _listaItems(data, BuildContext context) {
    final List<Widget> opciones =[];
    data.forEach((opt){
        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: (){
            Navigator.pushNamed(context, opt['ruta']);
          },
        );
        opciones..add(widgetTemp)
                ..add(Divider());
    } 
    );
    return opciones;
  }
}