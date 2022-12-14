
import 'package:flutter/material.dart';
import 'package:tyba/src/Widgets/buttons_widgets.dart';
import 'package:tyba/src/pages/generate.dart';
import 'package:tyba/src/pages/scan.dart';

class QrPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(251, 85, 23, 1),
        title: Text("CODGIO QR"),
        centerTitle: true,
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.6),
                  end: FractionalOffset(0.0, 1.0),
                  colors: [Colors.white, Color.fromRGBO(200, 200, 200, 1)]),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/Qricon.png'),
                  height: 300,
                  width: 120,
                ),
                flatButton("Scanear codigo QR", ScanPage()),
                SizedBox(
                  height: 20.0,
                ),
                flatButton("Crear codigo QR", GeneratePage()),
              ],
            ),
          ),
          Positioned(
            left: -50.0,
            child: ProfileButtonWidget(),
          ),
        ],
      ),
    );
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(
            color: Color.fromRGBO(251, 85, 23, 1), fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color.fromRGBO(251, 85, 23, 1), width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
