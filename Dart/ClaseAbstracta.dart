void main(List<String> args) {
  final perro = new Perro();
  perro.emitirSonido();

  final gato  =new Gato();
  gato.emitirSonido();
}

// Obliga a otra clases a que implemente sus propiedades y metodos
abstract class Animal
{
  int patas;

  void emitirSonido();
}

class Perro implements Animal
{
  int patas;
  int colas;

  void emitirSonido()
  {
    print('guau');
  }
}

class Gato implements Animal
{
  int patas;

  void emitirSonido()
  {
    print('miau');
  }
}