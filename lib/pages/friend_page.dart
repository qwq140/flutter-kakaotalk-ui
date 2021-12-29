import 'package:flutter/material.dart';
import 'package:flutter_study/models/friend.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("친구"),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildMyProfile(),
            const Divider(height: 20, thickness: 1),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  const Text("친구"),
                  const SizedBox(width: 5),
                  Text(friends.length.toString()),
                ],
              ),
            ),
            _buildFriendList(),
          ],
        ),
      ),
    );
  }

  ListView _buildFriendList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: friends.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                friends[index].image,
                width: 50,
                height: 50,
                fit: BoxFit.fill,
              ),
            ),
            title: Text(friends[index].name),
          ),
        );
      },
    );
  }

  ListTile _buildMyProfile() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/image.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.fill,
        ),
      ),
      title: const Text("박재빈"),
    );
  }
}
