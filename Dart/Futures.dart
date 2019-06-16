void main(List<String> args) {
  print('Estamos a punto de pedir datos');

  httpGet('https://nasa.com').then((data){
    print(data);
  });

  print('Otra linea');
}

Future<String> httpGet(String url)
{
  return Future.delayed(new Duration(seconds: 4), () {
    return 'Hola mundo!';
  });
}