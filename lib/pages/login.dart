import 'package:flutter/material.dart';
import 'package:tyba/bloc/login_bloc.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  late String email = '';
  late String password = '';
  bool remember = false;
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Stack(
          children: [
            _contenedor(),
            _login()
          ],
        )
      ),
    );
  }

  Widget _contenedor() {
    final size = MediaQuery.of(context).size;

    final contenido1 = Container(
      height: size.height * 0.5,
      width: double.infinity,
      color: Colors.blue,
    );

    final avatar = Container(
      margin: EdgeInsets.only(top: 60.0),
      child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.nj.com/resizer/h8MrN0-Nw5dB5FOmMVGMmfVKFJo=/450x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg'),
                radius: 50,
              ),
              Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          )),
    );

    return Stack(
      children: [contenido1, avatar],
    );
  }

  Widget _login() {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 200.0),
          width: size.width * 0.80,
          height: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("LOGIN"),
                  SizedBox(
                    height: 10.0,
                  ),
                  _email(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _password(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _button(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _email() {
    return Container(
      child: TextFormField(
        decoration: new InputDecoration(
          labelText: 'ejemplo@ejemplo.com',
          fillColor: Colors.orange,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
        ),
        initialValue: email,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          email = value;
          setState(() {});
        },
      ),
    );
  }

  Widget _password() {
    return TextFormField(
      decoration: new InputDecoration(
        labelText: 'Contraseña',
        fillColor: Colors.orange,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(),
        ),
      ),
      initialValue: password,
      obscureText: true,
      onChanged: (value) {
        password = value;
        setState(() {});
      },
    );
  }

  Widget _button() {
    return RaisedButton(
      color: Colors.amber,
      onPressed: () {
        _ingresar();
      },
      child: Text(
        'Ingresar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }


  void _ingresar() async {


  }

}