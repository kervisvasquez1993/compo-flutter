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
          children: _crearItemCorto()
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
        lista..add(tempWidget)
              ..add(Divider());
    }
    return lista;
  }

  List <Widget> _crearItemCorto()
  {
     return opciones.map((item){ // al principio me regresa un iterable, para cambiar esto es con un toList()
        return Column(
            children : <Widget>[        
            ListTile(
                     title: Text('$item !'),
                     subtitle: Text('esto es un hijo'),
                     leading: Icon(Icons.access_alarms),
                     trailing: Icon(Icons.arrow_back),
                     onTap: (){},
                    ),
            Divider()
            ],
         );    
     } ).toList();

    
  }
}