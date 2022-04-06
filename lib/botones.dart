import 'package:flutter/material.dart';
import 'package:proyecto_navegation/principal.dart';

class botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A donde vamos?'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Precipona los botones para acceder a las rutas')],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            heroTag: 'boton3',
            child: Icon(Icons.arrow_back),
            backgroundColor: Colors.green,
            onPressed: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) => principal())
              );
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'boton2',
            child: Text('2'),
            backgroundColor: Colors.pink,
            onPressed: (){
              Navigator.pushNamed(context, 'boton2');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'boton1',
            child: Text('1'),
            backgroundColor: Colors.grey,
            onPressed: (){
              Navigator.pushNamed(context, 'boton1');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'error',
            child: Icon(Icons.error),
            backgroundColor: Colors.red,
            onPressed: (){
              Navigator.pushNamed(context, 'error');
            },
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
