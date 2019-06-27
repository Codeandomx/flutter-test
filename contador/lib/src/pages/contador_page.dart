import 'package:flutter/material.dart';

// Creamos el widget state ful
class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState(); // Asignamos el estado del widget
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 30);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Hola mundo'), centerTitle: true, ), // Centramos el titulo 
      body: Center( // Centra los elementos
        child: Column(
          children: <Widget>[
            Text('Número de clics:', style: _estiloTexto),
            Text('$_count', style: _estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center, // Alineación de los elementos en la columna
        )
      ),
      floatingActionButton: _crearBotones(), // Separamos el código para simplificarlo
    );
  }

  // Creamos la botonera de abajo
  /*
   * Nota: Las funciones callback no se utilizan con parentesis, ya que si lo hacemos al construirse el widget
   * se mandan llamar
   */
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, // Alinea los widget en la fila
      children: <Widget>[
        SizedBox( width: 30.0 ), // Padding
        FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero) ),
        Expanded( child: SizedBox() ), // Expande todo lo posible la distancia entre dos widgets
        FloatingActionButton( onPressed: _sustraer, child: Icon(Icons.remove) ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( onPressed: _agregar, child: Icon(Icons.add) ),
      ]
    );
  }

  void _agregar() { setState(() =>  _count++ ); }
  void _sustraer() { setState(() =>  _count-- ); }
  void _reset() { setState(() =>  _count = 0 ); }
  
}