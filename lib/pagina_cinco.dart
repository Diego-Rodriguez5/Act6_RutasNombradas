import 'package:flutter/material.dart';

//! Align

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff51718c),
        title: const Text('Pantalla Cuatro - Diego'),
      ),
      body: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Align(
            alignment: Alignment.topRight, // Cambiado a Alignment.topRight
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
