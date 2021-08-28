import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => ContadorPageState();
}

class ContadorPageState extends State<ContadorPage> {
  final _textStyle = TextStyle(fontSize: 30);

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador Page"),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                "Número de taps:",
                style: _textStyle,
              ),
              Text('$_count', style: _textStyle),
            ])),
        floatingActionButton: crearBotones());
  }

  Widget crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: agregar,
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void agregar() => setState(() => _count++);
  void sustraer() => setState(() => _count--);
  void reset() => setState(() => _count = 0);
}
