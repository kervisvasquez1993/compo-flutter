import 'package:componentes/pages/alert_page.dart';
import 'package:componentes/pages/avatar_page.dart';
import 'package:componentes/pages/home_page.dart';
import 'package:componentes/pages/router.dart';
import 'package:componentes/pages/web_page.dart';
// import 'package:componentes/pages/home_temp.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setting)
      {
        print('hola: ${setting.name}');
        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage()
        );

      },
    );
  }
}