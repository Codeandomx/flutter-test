void main()
{
  saludar();
  saludo();
  print(saludando());
  print(saludand('Hola, ', 'Paulo'));
  print(saludan(msg: 'Hola, ', name: 'Paulo'));
  print(saluda(msg: 'Hola, ', name: 'Paulo'));
}

// Funcion que retorna un tipo dinamico
saludar()
{
  print("Hola");
}

// Funcion que retorna un tipo especifico
void saludo()
{
  print("Hola");
}

// Funcion que retorna un string
String saludando()
{
  return "Hola";
}

// Funcion con argumentos
String saludand(String msg, String name)
{
  return '$msg $name';
}

// Funcion con argumentos con nombre
String saludan({ String msg, String name })
{
  return '$msg $name';
}

// Funciones con flecha
// Implicitamente tiene la palabra return
String saluda({ String msg, String name }) => '$msg $name';