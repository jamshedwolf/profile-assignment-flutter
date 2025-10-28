import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Education Section
          _buildSection(
            title: 'Education',
            children: [
              _buildListItem('Bachelor of Computer Science - KARAKORM INTERNATIONAL UNIVERSITY  (2023-2027)'),
              _buildListItem('Web Development Bootcamp - Udemy'),
              _buildListItem('Mobile App Development Certification '),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Skills Section
          _buildSection(
            title: 'Skills',
            children: [
              const Text('Technical Skills:'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildChip('Flutter'),
                  _buildChip('React Native'),
                  _buildChip('Firebase'),
                  _buildChip('React'),
                  _buildChip('Git'),
                  _buildChip('UI/UX Design'),
                  _buildChip('Problem Solving'),
                  _buildChip('Team Collaboration'),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Hobbies Section
          _buildSection(
            title: 'Hobbies',
            children: [
              _buildListItem('📚 Reading tech blogs and books'),
              _buildListItem('💻 coding '),
              _buildListItem('✈️ Traveling and exploring new places'),
              _buildListItem('🏀 Playing volleyball'),
              _buildListItem('🎨 Digital art and design'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> children}) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• '),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}