import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';  // ← Import the package

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  void _showMessage(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$platform link would open here!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // LinkedIn - Real Logo
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin),  // ← Real LinkedIn icon
          color: const Color(0xFF0077B5),  // LinkedIn blue color
          iconSize: 30,
          onPressed: () {
            _showMessage(context, 'LinkedIn');
          },
        ),
        
        // GitHub - Real Logo  
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.github),  // ← Real GitHub icon
          color: Colors.black,
          iconSize: 30,
          onPressed: () {
            _showMessage(context, 'GitHub');
          },
        ),
        
        // Twitter - Real Logo
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.twitter),  // ← Real Twitter icon
          color: const Color(0xFF1DA1F2),  // Twitter blue color
          iconSize: 30,
          onPressed: () {
            _showMessage(context, 'Twitter');
          },
        ),
      ],
    );
  }
}