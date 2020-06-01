import 'package:componentes/pages/providers/menu_provider.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
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
    print(menuProvider.opciones);
    //return ListView(children: _listasItems(),);
  }

  List<Widget> _listasItems() {
      return [
        ListTile(title: Text( 'hola kervis')),
        Divider(),
        ListTile(title: Text( 'hola mundo')),
        Divider(),
        ListTile(title: Text( 'hola mundo')),
        Divider(),
      ];
  }
}