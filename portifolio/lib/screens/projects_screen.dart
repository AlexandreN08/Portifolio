import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const Text(
            "Projetos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: const [
              ProjectCard(
                title: "App de Reciclagem",
                description:
                    "Aplicativo em Flutter integrado ao Firebase para gestão de pontos de coleta.",
                link: "https://github.com/seuusuario/recycling-app",
              ),
              ProjectCard(
                title: "Sistema de Agendamentos",
                description:
                    "Aplicação web em React + Firebase para agendar serviços de barbearia.",
                link: "https://github.com/seuusuario/barber-app",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
