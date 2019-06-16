void main(List<String> args) async {
  print('Estamos a punto de pedir datos');

  String data = await httpGet('https://nasa.com');

  print(data);

  print('Otra linea');
}

Future<String> httpGet(String url)
{
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo!';
  });
}