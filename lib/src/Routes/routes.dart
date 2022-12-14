import 'package:flutter/material.dart';
import 'package:tyba/pages/login.dart';
import 'package:tyba/src/pages/bus_page.dart';
import 'package:tyba/src/pages/cityRoutes_page.dart';
import 'package:tyba/src/pages/generate.dart';
import 'package:tyba/src/pages/home_page.dart';
import 'package:tyba/src/pages/navigationBar.dart';
import 'package:tyba/src/pages/pointController_page.dart';
import 'package:tyba/src/pages/qrPage.dart';
import 'package:tyba/src/pages/register_pages.dart';
import 'package:tyba/src/pages/regs_page.dart';
import 'package:tyba/src/pages/routes_page.dart';
import 'package:tyba/src/pages/scan.dart';
import 'package:tyba/src/pages/scroll_page.dart';
import 'package:tyba/src/pages/time_page.dart';
import 'package:tyba/src/pages/transport_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ScrollPage(),
    'register': (BuildContext context) => RegisterPage(),
    'login': (BuildContext context) => LoginPage(),
    'qr': (BuildContext context) => QrPage(),
    'scan': (BuildContext context) => ScanPage(),
    'generate': (BuildContext context) => GeneratePage(),
    'regs': (BuildContext context) => RegsPage(),
    'nav': (BuildContext context) => NavigationBarApp(),
    'timePage': (BuildContext context) => TimePage(),
    'busPage': (BuildContext context) => BusPage(),
    'routesPage': (BuildContext context) => RoutesPage(),
    'pointControlPage': (BuildContext context) => PointControllerPage(),
    'cityRoutesPage': (BuildContext context) => CityRoutesPage(),
    'transportPage': (BuildContext context) => TransportPage(),
    'home': (BuildContext context) => HomePage(),
  };
}
