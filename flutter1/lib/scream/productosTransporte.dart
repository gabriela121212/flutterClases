import 'package:flutter/material.dart';

class ProductosTransporte extends StatelessWidget {
  const ProductosTransporte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos Transporte')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Ventana de Productos Transporte'),
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
