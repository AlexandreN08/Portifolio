import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: const [
          Text(
            "Sobre Mim",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            "Sou desenvolvedor Mobile & Web com experiência em Flutter, React Native e Firebase.\n"
            "Atualmente também estudo React para Web. Apaixonado por criar soluções digitais escaláveis e de impacto.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
