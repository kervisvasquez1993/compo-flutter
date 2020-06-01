import 'package:flutter/services.dart' show rootBundle; // para leer solo json
class _MenuProvider 
{
    List<dynamic> opciones = [];

    _MenuProvider()
    {
      cargarData();
          }
      
        cargarData() 
        {
            rootBundle.loadString('data/menu_opts.json')
            .then((data){
              print(data);
            });
        }
}


final menuProvider = new _MenuProvider();