import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Não foi possível abrir a URL: $url");
    }
  }

  Widget _buildProjectCard(String title, String description, String link) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => _launchUrl(link),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.open_in_new, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

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
            children: [
              _buildProjectCard(
                "App de Reciclagem",
                "Aplicativo em Flutter integrado ao Firebase para gestão de pontos de coleta, versões disponiveis para Android e Web.",
                "https://github.com/AlexandreN08/recicle",
              ),
              _buildProjectCard(
                "App para Barbearia",
                "Aplicação Flutter + Firebase para agendar Horários de barbearia.",
                "https://github.com/AlexandreN08/BarberApp",
              ),
              _buildProjectCard(
                "React App de Reciclagem",
                "Aplicação Android React + Firebase para gestão de pontos de coleta.",
                "https://github.com/AlexandreN08/Recycling",
              ),
              _buildProjectCard(
                "Sistema Sigge Eventos",
                "Aplicação Android e web + Firebase para cadastro de eventos e emissão de certificados.",
                "https://github.com/Necker08/Sigge-Eventos-",
              ),
              _buildProjectCard(
                "Sistema Liberae",
                "Software Web PHP integrado com banco de dados Mysql para gerenciamento e liberação de saida e entrada de funcionarios.",
                "https://github.com/AlexandreN08/Liberae",
              ),
              _buildProjectCard(
                "Software gerenciador de TV",
                "Software web PHP integrado com banco de dados Mysql para gerenciamento de apresentações em TV",
                "https://github.com/seuusuario/barber-app",
              ),
              _buildProjectCard(
                "Software Controle de estoque",
                "Sistema em Java + Banco de dados Mysql controle e organização de estoque",
                "https://github.com/Necker08/controleEstoqueJava",
              ),
              _buildProjectCard(
                "Software Biblioteca",
                "Software Java + Banco de dados Mysql para cadastro de livros",
                "https://github.com/Necker08/progBibliotecaJava",
              ),
              _buildProjectCard(
                "Web Lanchonete",
                "Software php + Banco de dados Mysql para pedidos e gerenciamento de lanches",
                "https://github.com/AlexandreN08/ole",
              ),
              _buildProjectCard(
                "Contextos",
                "Software php + Banco de dados Mysql para cadastro de atividades acâdemicas da Contextos IFPR Campos Palmas PR",
                "https://github.com/AlexandreN08/Contextos",
              ),
              _buildProjectCard(
                "Gerenciador_Tv",
                "Software php + Banco de dados Mysql para gerenciamento de apresentações corporativo de empresas",
                "https://github.com/AlexandreN08/Gerenciador_TV",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
