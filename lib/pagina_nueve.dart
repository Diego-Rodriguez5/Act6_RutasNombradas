import 'package:flutter/material.dart';

//! AnimatedCrossFade

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            false, // Para que no aparezca un botón automático
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: const Color(0xff51718c), // El color de la AppBar
        title: const Text('Pantalla Ocho - Diego'), // El título de la AppBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/images/oceano.jpg', // Ruta de la primera imagen
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/images/oceano1.jpg', // Ruta de la segunda imagen
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
