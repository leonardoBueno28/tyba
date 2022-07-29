import 'package:flutter/material.dart';
import 'package:tyba/src/Widgets/styleWidgets.dart';

class TimePage extends StatefulWidget {
  TimePage({Key? key}) : super(key: key);

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return AppBarTittle(
      title: 'Mis tiempos', elev: 0.0,
    );
  }
}
