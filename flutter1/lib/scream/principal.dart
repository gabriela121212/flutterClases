import 'package:flutter/material.dart';
import 'productosComestibles.dart';
import 'productosEscolares.dart';
import 'productosMedicos.dart';
import 'productosOficina.dart';
import 'productosTecnologico.dart';
import 'productosTransporte.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aron_gradient_line/aron_gradient_line.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: AronGradientLine(useMaterial3: true),
        ),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/productosJson'),
                          child: Text('ProductosJson'),
                        ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/categorias'),
                          child: Text('Categorias'),
                        ),
                        Text(
                          'Botones',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 16, 165, 206),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextButton.icon(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/productos'),
                          icon: Icon(Icons.arrow_back),
                          label: Text('Productos Escolares'),
                        ),

                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosMedicos(),
                            ),
                          ),
                          child: Text('Productos medicos'),
                        ),

                        TextButton.icon(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosOficina(),
                            ),
                          ),
                          icon: Icon(Icons.perm_camera_mic_outlined),
                          label: Text('Productos de oficina'),
                        ),

                        OutlinedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosEscolares(),
                            ),
                          ),
                          child: Text('Productos de oficina'),
                        ),

                        OutlinedButton.icon(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosTransporte(),
                            ),
                          ),
                          icon: Icon(Icons.arrow_back),
                          label: Text('Productos de transporte'),
                        ),

                        ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosTecnologicos(),
                            ),
                          ),
                          child: Text('Productos tecnologicos'),
                        ),

                        ElevatedButton.icon(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosComestibles(),
                            ),
                          ),
                          icon: Icon(Icons.arrow_back),
                          label: Text('Productos comestibles'),
                        ),

                        IconButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductosEscolares(),
                            ),
                          ),
                          icon: Icon(Icons.arrow_back),
                        ),

                        Text(
                          'This is Google Fonts',
                          style: GoogleFonts.allison(),
                        ),
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.gamepad),
                          onPressed: () {
                            print("Pressed");
                          },
                        ),

                        Image.asset("/img2.jpg", height: 300, width: 30),
                        Text('This is Google Fonts', style: GoogleFonts.lato()),
                      ],
                    ),

                    SizedBox(width: 30),

                    Column(
                      children: [
                        Text(
                          'The House',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'esta casa lleva',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 69, 105, 134),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'The House',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'esta casa lleva',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 84, 110, 132),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 30),

                    Column(
                      children: [
                        Image.asset("/img2.jpg", height: 300, width: 300),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
