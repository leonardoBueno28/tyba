import 'package:flutter/material.dart';
import 'package:tyba/bloc/login_bloc.dart';

class ProviderLogin extends InheritedWidget {
  late final LoginFormBloc = LoginBloc();

  ProviderLogin({Key? key, required Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static LoginBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ProviderLogin>()!
        .LoginFormBloc;
  }
}