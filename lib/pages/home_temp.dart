import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes temp'),
      ),
        body: ListView(
          children: _crearItem()
        ),
      
    );
  }
  List <Widget> _crearItem()
  {

    List <Widget> lista = new List <Widget> ();
    for (String opt in opciones)
    {
        final tempWidget = ListTile(
          title: Text(opt),
        );
        lista.add(tempWidget);
        lista.add(Divider(height: 20,));
    }
    return lista;
  }
}