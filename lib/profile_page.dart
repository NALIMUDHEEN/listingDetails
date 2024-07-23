import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  user!.photoURL ?? 'https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            Text('Name: ${user!.displayName ?? 'No name'}'),
            Text('Email: ${user!.email ?? 'No email'}'),
            Text('Phone Number: ${user!.phoneNumber ?? 'No phone number'}'),
            ElevatedButton(
              onPressed: () {
                // Implement editing profile details
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
