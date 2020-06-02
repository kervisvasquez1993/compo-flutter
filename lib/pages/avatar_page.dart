import 'package:flutter/material.dart';
 
 class AvatarPage extends StatelessWidget {
  
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Avatar Page'),
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