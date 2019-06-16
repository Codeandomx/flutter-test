void main(List<String> args) {
  final cuadrado = new Cuadrado();

  cuadrado.lado = 10;

  print(cuadrado);
  print('Area: ${ cuadrado.area }');
}

class Cuadrado
{
  // Propiedades
  // Con el guion bajo las propiedades se hacen privadas
  double _lado;
  double _area;

  // Getter y setters
  set lado(double valor){
    if(valor <= 0) {
      throw('El lado no puede ser menor o igual a 0');
    }
    
    // Asignamos el lado
    _lado = valor;
  }

  // No lleva parentesis
  /* double get area {
    return _lado * _lado;
  } */
  // Version corta
  double get area =>_lado * _lado;

  // Sobreescribimos
  toString() => 'Lado: ${ _lado }';
}