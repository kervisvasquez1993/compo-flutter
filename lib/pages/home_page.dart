

import 'package:componentes/providers/menu_provider.dart';

import 'package:flutter/material.dart';

import 'package:componentes/pages/alert_page.dart';class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes'),
      ),
      body: _Lista(),
    );
  }

  Widget _Lista() {
    
   /*
      menuProvider.cargarData().then((opciones) {
      print('_Lista');
      print(opciones);
    });
    */
      return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [], // informacion que va atener por defecto miestra no tenga los datos
        builder: (BuildContext context, AsyncSnapshot <List <dynamic>> snapshot){
          
          
          return ListView(children: _listasItems(snapshot.data, context), ); // ojo ojo!! retornamos el context para usarlo el _listasItems 

        },
      );  

    //print(menuProvider.opciones);
    //return );
  }

  List<Widget> _listasItems(List <dynamic> data, BuildContext context) {
      final List <Widget> opciones = [];
      data.forEach((opt) { 
        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: Icon(Icons.account_circle, color: Colors.blue),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
          onTap: (){
              
              
              Navigator.pushNamed(context, '/${opt['ruta']}');
              //final route = MaterialPageRoute(
              //  builder: (context)
              //  {
              //  return AlertPage();
              //  }
              //   );
              //Navigator.push(context, route);
          },
        ); 

        opciones..add(widgetTemp)
                ..add(Divider());
      });

      return opciones;
  }
}