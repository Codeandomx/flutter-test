// Importamos material
import 'package:contador/src/pages/contador_page.dart';
// import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';

// Creamos un widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage()
      home: ContadorPage(), // Asignamos el widget principal
      debugShowCheckedModeBanner: false, // Quitamos el banner debug
    );
  }
}