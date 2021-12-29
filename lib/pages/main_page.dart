import 'package:flutter/material.dart';
import 'package:flutter_study/pages/chat_page.dart';
import 'package:flutter_study/pages/friend_page.dart';
import 'package:flutter_study/pages/more_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          FriendPage(),
          ChatPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.ellipsisH), label: ""),
        ],
      ),
    );
  }
}
