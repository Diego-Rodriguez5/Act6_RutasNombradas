import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

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
        backgroundColor: Color(0xff51718c), // Color de fondo de la AppBar
        title: const Text('Pantalla Dos - Diego'), // Título de la pantalla
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Botón Grande'), // Agregué un texto al botón
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {},
                  child: const Text(
                      'Bloqueado'), // Agregué un texto al botón bloqueado
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
