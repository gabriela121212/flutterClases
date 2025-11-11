import 'package:flutter/material.dart';
import 'package:flutter1/scream/principal.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoHome();
  }

  _navigatetoHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => Principal()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Logotipo de la APP")));
  }
}
