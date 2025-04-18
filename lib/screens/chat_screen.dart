import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boardName = ModalRoute.of(context)!.settings.arguments as String? ?? 'Chat';

    return Scaffold(
      appBar: AppBar(title: Text(boardName)),
      body: Center(child: Text('Chat Screen for $boardName (To Be Implemented)')),
    );
  }
}
