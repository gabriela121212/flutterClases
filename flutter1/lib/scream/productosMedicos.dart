import 'package:flutter/material.dart';

class ProductosMedicos extends StatelessWidget {
  const ProductosMedicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos Medicos')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Ventana de Productos Medicos'),
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
