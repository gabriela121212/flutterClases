import 'package:flutter/material.dart';

class ProductosEscolares extends StatelessWidget {
  const ProductosEscolares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Botonera")),
        scrolledUnderElevation: 20.0,
        centerTitle: true,
        toolbarHeight: 150.2,
        toolbarOpacity: 0.9,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(25),
          ),
        ),

        backgroundColor: const Color.fromARGB(255, 10, 65, 246),

        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {
              Navigator.pushNamed(context, 'principal');
            },
          ),
          //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
          //IconButton
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Productos Escolares',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver'),
            ),
            const SizedBox(height: 20),
            Image.network(
              '',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) {
                return const Text('Error al cargar imagen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
