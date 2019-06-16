void main(List<String> args) {
  final superman = new Hero();
  superman.nombre = 'Clark Kent';
  final luthor = new Villano();
  luthor.nombre = 'Lex Luthor';

}

// Clase padre
abstract class Personaje
{
  String nombre;
  String poder;
}

class Hero extends Personaje
{
  int valentia;
}

class Villano extends Personaje
{
  int maldad;
}
