import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Não foi possível abrir: $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF3a6186), Color(0xFF89253e)], // degrade azul/roxo
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Foto
          ClipOval(
            child: Image.asset(
              "assets/images/eu.jpeg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),

          // Texto
          const Text(
            "Olá, eu sou o Alexandre 👋",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Desenvolvedor Mobile & Web",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 25),

          // Botões de ação
          Wrap(
            spacing: 20,
            children: [
              ElevatedButton(
                onPressed: () => _launchUrl("#projetos"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("📂 Projetos"),
              ),
              ElevatedButton(
                onPressed: () => _launchUrl("https://drive.google.com"), // link do CV
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("📄 Download CV"),
              ),
              ElevatedButton(
                onPressed: () => _launchUrl("#contato"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text("📬 Contato"),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Skills principais com ícones
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.phone_iphone, color: Colors.white, size: 30), // Mobile
              SizedBox(width: 20),
              Icon(Icons.web, color: Colors.white, size: 30), // Web
              SizedBox(width: 20),
              Icon(Icons.cloud, color: Colors.white, size: 30), // Firebase
            ],
          ),
        ],
      ),
    );
  }
}
