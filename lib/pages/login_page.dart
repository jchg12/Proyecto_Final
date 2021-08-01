import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto_final_flutter/pages/inicio_page.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fondo.jpg'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/imagen.png',
                  height: 300.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                _userTextField(),
                SizedBox(
                  height: 15.0,
                ),
                _passwordTextField(),
                SizedBox(
                  height: 15.0,
                ),
                _bottonLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                icon: Icon(Icons.email),
                hintText: 'ejemplo@gmail.com',
                labelText: 'Correo Electronico'),
          ),
        );
      },
    );
  }

  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              icon: Icon(Icons.lock),
              hintText: 'Contraseña',
              labelText: 'Contraseña',
            ),
          ),
        );
      },
    );
  }

  Widget _bottonLogin() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InicioPage()),
            );
          },
        );
      },
    );
  }
}
