// Importamos
import 'dart:convert';

void main() {
  // Instanciamos un objeto de la clase Hero
  // La palabra reservada new es opcional
  // Final es parecido a una constante
  final wolverine = new Hero(name: 'Logan', power: 'Regeneración');

  print(wolverine);

  // Creamos un json simulando una API Rest
  final rowJson = '{ "name":"Logan", "power":"Regeneracion" }';
  // Parseamos el json
  Map parsedJson = json.decode(rowJson);
  // Utilizamos el constructor con nombre
  final wolverine2 = new Hero.fromJson(parsedJson);
  print(wolverine2);
}

// Declaramos una clase
class Hero
{
  // Propiedades
  String name;
  String power;

  // Constructor tradicional
  /* Hero({String name = 'Sin nombre', String power}){
    this.name = name;
    this.power = power;
  } */

  // Constructor corto (La palabra this es opcional)
  Hero({ this.name, this.power });

  // Creamos un constructor con nombre para recibir json
  Hero.fromJson(Map parsedJson){
    name = parsedJson["name"];
    power = parsedJson["power"];
  }

  // Sobrescribinos el método toString()
  /* toString()
  {
    return 'Nombre: ${ this.name } - Poder: ${ this.power }';
  } */
  // Version corta
  toString() => 'Nombre: ${ this.name } - Poder: ${ this.power }';
}