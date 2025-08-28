import 'package:flutter/material.dart';


class SkillChip extends StatelessWidget {
  final String label;
  final String? imagePath; // Caminho para a imagem/logo
  final double imageSize; // Tamanho da imagem

  const SkillChip({
    super.key,
    required this.label,
    this.imagePath,
    this.imageSize = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (imagePath != null) ...[
            Image.asset(
              imagePath!,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.code,
                  size: imageSize,
                  color: Colors.blue.shade400,
                );
              },
            ),
            const SizedBox(width: 10),
          ],
          Text(
            label,
            style: TextStyle(
              color: Colors.blue.shade700,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          const Text(
            "Habilidades",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              SkillChip(
                label: "Flutter",
                imagePath: "assets/images/flutter.png",
              ),
              SkillChip(
                label: "Firebase",
                imagePath: "assets/images/FIREBASE.png",
              ),
              SkillChip(
                label: "React",
                imagePath: "assets/images/React.png",
              ),
              SkillChip(
                label: "SQL",
                imagePath: "assets/images/Sql.png",
              ),
              SkillChip(
                label: "GitHub",
                imagePath: "assets/images/github.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

