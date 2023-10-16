import 'package:flutter/material.dart';

import '../styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          primaryColor, //importa as cores primarias la do estilos criados
      /**Corpo da pagina  */
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            // uma caixa para preencher a tela
            width: double.infinity,
          ),
          Icon(
            Icons.fingerprint,
            size: 72,
            color: accentColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Contatos",
            style: TextStyle(fontSize: 24, color: accentColor),
          )
        ],
      ),
    );
  }
}
