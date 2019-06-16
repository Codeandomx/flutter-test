void main()
{
  // Numeros
  int empleados = 5;
  double pi = 3.1415392;
  var numero = 1.0;

  print("$empleados - $pi - $numero");

  // Strings

  String nombre = "paulo";

  print(nombre);

  // Obtener el primer caracter
  print(nombre[0]);

  // Obtener el ultimo caracter
  print(nombre[nombre.length - 1]);

  // Tipos booleanos
  bool activado = true;

  print(activado);

  // Negacion
  activado = !activado;

  if(activado){
    print("El motor esta funcionando");
  } else {
    print("El motor esta apagado");
  }
}