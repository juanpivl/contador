import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _restar() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
