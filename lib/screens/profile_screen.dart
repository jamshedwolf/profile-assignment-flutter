import 'package:flutter/material.dart';
import '../models/profile_model.dart';
import '../widgets/contact_card.dart';
import '../widgets/social_icons_row.dart';

class ProfileScreen extends StatelessWidget {
  final Profile profile = const Profile(
    name: 'Jamshed Ali',
    profession: 'Student',
    bio: 'Passionate about mobile development, Web development and creating amazing user experiences. Love learning new technologies and building innovative solutions.',
    email: 'jamsheedwolf@gmail.com',
    phone: '+923125230339',
    location: 'District Nager tehsil Chalt',
  );

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // 🖼 Profile Picture
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blueAccent,
              child: const CircleAvatar(
                radius: 66,
                backgroundImage: AssetImage('assets/images/a.png'),
              ),
            ),

            const SizedBox(height: 20),

            // 🧑 Name
            Text(
              profile.name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 8),

            // 💼 Profession
            Text(
              profile.profession,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 20),

            // 📝 Bio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                profile.bio,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            // 📞 Contact Info
            ContactCard(
              email: profile.email,
              phone: profile.phone,
              location: profile.location,
            ),

            const SizedBox(height: 20),

            // 🌐 Social Media
            const Text(
              'Follow me on',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const SocialIconsRow(),

            const SizedBox(height: 40),

            // 🩵 About Me Button (instead of floating icon)
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'About Me',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
