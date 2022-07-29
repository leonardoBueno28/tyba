import 'dart:async';

class Validaciones {
  final validarNombre = StreamTransformer<String, String>.fromHandlers(
    handleData: (nombres, sink) {
      if (nombres.length > 2) {
        sink.add(nombres);
      } else {
        sink.addError('Nombres es obligatorio');
      }
    },
  );

  final validarApellidos = StreamTransformer<String, String>.fromHandlers(
    handleData: (apellidos, sink) {
      if (apellidos.length > 2) {
        sink.add(apellidos);
      } else {
        sink.addError('Apellidos es obligatorio');
      }
    },
  );

  final validarEmail = StreamTransformer<String,String>.fromHandlers(
    handleData: (email, sink) {
      RegExp regExp = new RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      if (regExp.hasMatch(email)) {
        sink.add(email);
      } else {
        sink.addError('Email no es correcto');
      }
    },
  );

  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (password.length >= 6) {
        sink.add(password);
      } else {
        sink.addError('Contraseña muy corta, minimo 6 caracteres');
      }
    },
  );
}
