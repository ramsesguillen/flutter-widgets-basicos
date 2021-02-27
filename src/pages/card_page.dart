import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_size_select_actual),
            title: Text('Soy el titulo del card'),
            subtitle: Text('Este texto es para demostrar lo que hace el subtitle dentre del listTitle que seencuentra en una lista de widgets dentro de un Card.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok')
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card =  Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.publicdomainpictures.net/pictures/30000/velka/evening-landscape-13530956185Aw.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'), 
            // image: AssetImage('assets/jar-loading.gif'),
            height: 300.00,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripcion'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
