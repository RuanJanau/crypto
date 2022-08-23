import 'package:crypto/src/Modules/splash/controller/splash_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var controller = Modular.get<SplashController>();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (!controller.isLogged()) {
          Modular.to.pushReplacementNamed('/login');
        } else {
          Modular.to.pushReplacementNamed('/home');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 36, 39),
      body: Column(
        children: [
          const SizedBox(height: 200.0),
          Center(child: Image.asset('assets/image/triangulo.png', scale: 10.0)),
          const Center(
              child: Text(
            'Crypto',
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
