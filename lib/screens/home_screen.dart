import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> boards = ['General', 'Tech Talk', 'Off Topic'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Message Boards')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Menu')),
            ListTile(
              title: Text('Message Boards'),
              onTap: () => Navigator.pushReplacementNamed(context, '/home'),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () => Navigator.pushNamed(context, '/profile'),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () => Navigator.pushNamed(context, '/settings'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.message),
            title: Text(boards[index]),
            onTap: () => Navigator.pushNamed(context, '/chat', arguments: boards[index]),
          );
        },
      ),
    );
  }
}
