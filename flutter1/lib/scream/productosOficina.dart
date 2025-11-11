import 'package:flutter/material.dart';

class ProductosOficina extends StatelessWidget {
  const ProductosOficina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos Oficina')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Ventana de Productos Oficina'),
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
