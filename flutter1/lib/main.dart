import 'package:flutter/material.dart';
import 'package:flutter1/scream/Categorias.dart';
import 'package:flutter1/scream/platillas/product.dart';
import 'package:flutter1/scream/platillas/splash.dart';
import 'package:flutter1/scream/principal.dart';

import 'package:flutter1/scream/productosEscolares.dart';
import 'package:flutter1/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter1/theme/theme_provider.dart';
import 'package:flutter1/scream/platillas/product.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

///clase principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita el debug
      title: 'Flutter Demo',
      theme: lightmode,
      /*
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),*/
      initialRoute: '/splash',
      routes: {
        '/': (_) => Principal(),
        '/productos': (_) => ProductosEscolares(),
        '/categorias': (_) => Categorias(),
        '/splash': (_) => Splash(),
        '/productosJson': (_) => const ProductosJson(),
      },
    );
  }
}
