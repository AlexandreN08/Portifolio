import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  // Função para abrir link no navegador/app
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Não foi possível abrir: $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Entre em Contato",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),

            // LinkedIn
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => _launchUrl(
                  "https://www.linkedin.com/in/alexandre-necher-3338bb22a",
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // centraliza
                  children: const [
                    Icon(Icons.link, color: Colors.blue),
                    SizedBox(width: 8),
                    Text(
                      "LinkedIn",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            // WhatsApp
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => _launchUrl("https://wa.me/5546999185491"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // centraliza
                  children: const [
                    Icon(Icons.message, color: Colors.green),
                    SizedBox(width: 8),
                    Text(
                      "WhatsApp: (46) 99918-5491",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
