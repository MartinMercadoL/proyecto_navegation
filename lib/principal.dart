import 'package:flutter/material.dart';
import 'package:proyecto_navegation/boton1.dart';
import 'package:proyecto_navegation/boton2.dart';
import 'package:proyecto_navegation/botones.dart';
import 'package:proyecto_navegation/error.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context)=> principal(),
        'boton1': (BuildContext context)=> boton1(),
        'boton2': (BuildContext context)=> boton2(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext builder) => error());
      },
    );
  }
}
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pincipal'),
        backgroundColor:Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (context) {
              return botones();
            },
          );
          Navigator.push(context, ruta);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Página Principal'),
            Text('Da clic en el boton azul'),
          ],
        ),
      ),
    );
  }
}