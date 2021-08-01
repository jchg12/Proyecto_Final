import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _carTipo1(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}

Widget _carTipo1() {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: SizedBox(
            height: 100.0,
            width: 50.0,
            child: Image.asset('images/imagen.png'),
          ),
          title: Text('Soporte'),
          subtitle: Text('Descripcion'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Aceptar'),
            ),
            TextButton(onPressed: () {}, child: Text('Cancelar')),
          ],
        ),
      ],
    ),
  );
}
