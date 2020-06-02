import 'package:componentes/pages/alert_page.dart';
import 'package:componentes/pages/card_page.dart';
import 'package:componentes/pages/home_page.dart';
import 'package:componentes/pages/web_page.dart';
import 'package:flutter/material.dart';


Map<String,WidgetBuilder> getApplicationRoutes()
{
      return <String, WidgetBuilder>
      {
        '/'       : (BuildContext context) => HomePage(),
        '/login'  : (BuildContext context) => AlertPage(),
        '/singup' : (BuildContext context) => MyWebView(title: "Alligator.io",selectedUrl: "https://facebook.com",),
        '/omitir' : (BuildContext context) => MyWebView(title: "RedVital",selectedUrl: "https://redvital.com/dev",),
        '/card' : (BuildContext context) => CardPage(),
      };
}


