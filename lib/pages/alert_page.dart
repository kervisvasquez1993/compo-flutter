import 'package:flutter/material.dart';
 
 class AlertPage extends StatelessWidget {
  
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Alert page'),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.local_atm),
         onPressed: (){
           Navigator.pop(context);
         },
       ),
     );
   }
 }