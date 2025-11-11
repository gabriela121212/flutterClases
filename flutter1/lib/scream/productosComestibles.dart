import 'package:flutter/material.dart';

class ProductosComestibles extends StatelessWidget {
  const ProductosComestibles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos Comestibles')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Ventana de Productos Comestibles'),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
