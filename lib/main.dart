//stf
 
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Contador());
  }
}

class Contador extends StatefulWidget {
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador =0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo de Stateful Widget')),
      body: Center(child: Text('Valor: $contador', style: TextStyle(fontSize: 30))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            contador++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
 
