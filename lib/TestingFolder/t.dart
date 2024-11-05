import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Column(
        children: [
         const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 20),

          // Card with centered text
          Card(
            color: Colors.blue,
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Container(
              width: 300,
              height: 100,
              padding: const EdgeInsets.all(20),
              child: const Center(
                // Center widget to align text
                child: Text(
                  'Travelling',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors
                        .white, // Optional: Set text color to white for contrast
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
