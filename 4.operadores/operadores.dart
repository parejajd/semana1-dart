void main(List<String> args) {
  var variable1 = 5;
  var variable2 = 10;

  //Uso del operador ternario
  var resultado = (variable1 == variable2) ? 'Son iguales' : 'No son iguales';

  var variableNula;
  //Verificación de variable nula
  var resultado2 = variableNula ?? 'No hay valor';
}
