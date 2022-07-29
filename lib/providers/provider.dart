import 'package:flutter/material.dart';
import 'package:tyba/bloc/registerForm_bloc.dart';

class Provider extends InheritedWidget {
  final registerBloc = RegisterFormBloc();

  Provider({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static RegisterFormBloc? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Provider>()
        ?.registerBloc;
  }
}