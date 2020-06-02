import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

   Widget _cardTipo2() {
     return Card(
       child: Column(
         children: <Widget>[
           FadeInImage(
             image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
             placeholder: AssetImage('assets/jar-loading.gif'),
             fadeInDuration: Duration(milliseconds: 200),
             height: 300.0,
             fit: BoxFit.cover,
            ),
           //Image(
           //  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
           // ),
           Container(
             padding: EdgeInsets.all(10.0),
             child: Text(' NO tengo texto que poner')
             )        
              ],
       ),
     );
  }
}

Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child : Column(

        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android, color: Colors.red),
            title: Text('soy el titulo de mi card'),
            subtitle: Text('soy el subtitulo de en el card de la pagina soy el subtitulo de en el card de la pagina soy el subtitulo de en el card de la pagina soy el subtitulo de en el card de la pagina soy el subtitulo de en el card de la pagina '),
          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[ 
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: (){},
                )
            ],
          ),
        ]
      ),
    );
}