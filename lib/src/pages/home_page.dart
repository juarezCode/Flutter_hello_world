import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 30);

  final count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home_page"),
          centerTitle: true,
          elevation: 10,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(
                "Numero de clicks:",
                style: textStyle,
              ),
              Text('$count', style: textStyle),
            ])),
        floatingActionButton: crearBotones());
  }

  Widget crearBotones() {
    return FloatingActionButton(
      onPressed: () {
        print("hola mundo");
        //count = count * 1;
      },
      child: Icon(Icons.ac_unit),
    );
  }
}
