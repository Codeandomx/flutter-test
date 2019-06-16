void main()
{
  String propiedad = 'soltero';
  // Creamos un map
  Map<String, dynamic> persona = {
    'nombre': 'Paulo',
    'edad': 33,
    'soltero': true
  };

  print(persona['nombre']);
  print(persona['edad']);
  print(persona[propiedad]);

  Map<int, String> personas = {
    1: 'Paulo',
    2: 'Hugo',
    3: 'Carlos'
  };

  // Agregamos una perdon
  personas.addAll({ 4: 'Romina'});

  print(personas);
  print(personas[2]);
}