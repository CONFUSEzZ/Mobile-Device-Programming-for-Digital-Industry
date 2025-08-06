import 'package:flutter/material.dart';

class PhotoTab extends StatelessWidget {
  const PhotoTab({super.key});

  Widget _buildSkillSection(String title, List<String> items, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue.shade700),
              const SizedBox(width: 8),
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: items.map((item) => Chip(
              label: Text(item),
              backgroundColor: Colors.blue.shade50,
            )).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildSkillSection(
            '💻 ทักษะการเขียนโปรแกรม',
            ['Flutter', 'Dart', 'Python', 'Java', 'HTML/CSS', 'JavaScript'],
            Icons.code
          ),
          _buildSkillSection(
            '🌏 ความสามารถทางภาษา',
            ['ไทย (Native)', 'อังกฤษ (basic)'],
            Icons.translate
          ),
          _buildSkillSection(
            '❤️ ความสนใจ',
            ['เขียนโปรแกรม',  'เกม', 'ท่องเที่ยว', ],
            Icons.favorite
          ),
        ],
      ),
    );
  }
}
