import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: Text('US', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 130,
          backgroundImage: NetworkImage(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2021/08/grogu-mandalorian-2424855.jpg?tf=1200x1200'),
        ),
      ),
    );
  }
}
