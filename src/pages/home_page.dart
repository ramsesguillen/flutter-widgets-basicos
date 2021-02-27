import 'package:flutter/material.dart';
import 'package:proyecto3/src/providers/menu_provider.dart';
import 'package:proyecto3/src/utils/icono_string_util.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( contex, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItems(snapshot.data, contex),
        );
      },
    );
  }

  List<Widget> _crearItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach( (opt) {

      final tempWidget = ListTile(
        title: Text(opt['texto']),
        leading: getIcon( opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);
          //  final route = MaterialPageRoute(
          //    builder: (context) {
          //      return AlertPage();
          //    }
          //  );
          //  Navigator.push(context, route);
        },
      );

      opciones..add(tempWidget)
              ..add( Divider());
    });

    return opciones;
  }



/// uso del [map]
/*
  List<Widget> _crearItemsCorta() {

    final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

    return opciones.map( ( opcion ) {
      return Column(
        children: [
          ListTile(
            title: Text(opcion),
          ),
          Divider()
        ],
      );
    }).toList();

  }
*/


}