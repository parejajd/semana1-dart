void main(List<String> args) {
  //Se llama la funcion getName y se capturan las excepciones
  try {
    getName(null);
  } catch (e) {
    print(e);
  }
  try {
    getName("Juan");
  } catch (e) {
    print(e);
  }
  try {
    print(getName("Pedro"));
  } catch (e) {
    print(e);
  }
}

//Funcion que obtiene el nombre de una persona
String getName(String? name) {
  if (name == null || name.isEmpty) {
    //Si el nombre es nulo
    //Generar una excepcion
    throw 'El nombre no puede ser nulo';
  }

  if (name == "Juan") {
    //Lanzar excepcion de formato
    throw FormatException('El nombre no puede ser Juan');
  }

  return "El nombre de la persona es $name";
}
