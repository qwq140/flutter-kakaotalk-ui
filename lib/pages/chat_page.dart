import 'package:flutter/material.dart';
import 'package:flutter_study/models/chat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("채팅"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.search),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.qrcode),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.music),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.cog),
            iconSize: 15,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  chats[index].friend.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(chats[index].friend.name),
              subtitle: Text(chats[index].message),
              trailing: const Text("오후 11:00"),
            ),
          );
        },
      ),
    );
  }
}
