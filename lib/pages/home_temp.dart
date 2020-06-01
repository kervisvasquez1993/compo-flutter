import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro']
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes temp'),
      ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title : Text('list title')
            ),
            Divider(),
            ListTile(
              title : Text('list title')
            ),
            Divider(),
            ListTile(
              title : Text('list title')
            ),
            Divider(),
          ],
        ),
      
    );
  }
}