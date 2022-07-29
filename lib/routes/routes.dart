import 'package:flutter/cupertino.dart';
import 'package:tyba/pages/login.dart';

Map<String, WidgetBuilder> routesGeneral() {
  return {
    '/': (context) => LoginPage(),
  };
}