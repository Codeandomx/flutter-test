void main()
{
  // Creamos una lista dinamica no homogenea
  List numeros = [1, 2, 3, 4, 5];
  print(numeros);

  // Agregamos un nuevo elemento
  numeros.add(6);
  print(numeros);

  // Agregamos un nuevo elemento
  numeros.add("Hello world");
  print(numeros);

  // Creamos una lista dinamica homogenea 
  List<int> num = [1, 2, 3, 4, 5];
  print(num);

  // Creamos una lista estatica
  List<int> nums = new List(10);
  print(nums);
  // nums.add(1); // No es valido
  nums[0] = 1;
  print(nums);
}