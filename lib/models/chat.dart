import 'package:flutter_study/models/friend.dart';

class Chat {
  final Friend friend;
  final String message;

  Chat(this.friend, this.message);
}

List<Chat> chats = [
  Chat(friends[0], "안녕하세요"),
  Chat(friends[1], "안녕하세요"),
  Chat(friends[2], "안녕하세요"),
  Chat(friends[3], "안녕하세요"),
  Chat(friends[4], "안녕하세요"),
];
