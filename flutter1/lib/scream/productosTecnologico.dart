import 'package:flutter/material.dart';

class ProductosTecnologicos extends StatelessWidget {
  const ProductosTecnologicos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Productos Tecnologicos')),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Text('Ventana de Productos Tecnologicos'),
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
