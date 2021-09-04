void main() {
  var nombre = "Hola Mundo";
  String nombre_dos = "desde Flutter";
  var edad = 33;
  int edad_dos = 33;
  double peso = 75.5;

  //Null Safe Operator
  int? nullValue = null;

  //Variable de tipo Final
  final nombre_final = "Hola Mundo";

  //Variable de tipo Const
  const PI = 3.1416;

  print(nombre.toUpperCase() + " " + nombre_dos.toUpperCase());
}
