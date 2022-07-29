import 'dart:async';

import 'package:tyba/validations/validate.dart';


class RegisterFormBloc with Validaciones {
  final _nombresController = StreamController<String>.broadcast();
  final _apellidosController = StreamController<String>.broadcast();

  Stream<String> get nombresStream =>
      _nombresController.stream.transform(validarNombre);

  Stream<String> get apellidosStream =>
      _apellidosController.stream.transform(validarApellidos);

  Function(String) get changeNombres => _nombresController.sink.add;
  Function(String) get changeApellidos => _apellidosController.sink.add;

  dispose() {
    _nombresController.close();
    _apellidosController.close();
  }
}