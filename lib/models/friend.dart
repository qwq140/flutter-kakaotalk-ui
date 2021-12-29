class Friend {
  final String name;
  final String image;

  Friend(this.name, this.image);
}

const String prefix = "https://picsum.photos/id";

List<Friend> friends = [
  Friend("홍길동", '$prefix/1/200/300'),
  Friend("장보고", '$prefix/2/200/300'),
  Friend("친구1", '$prefix/3/200/300'),
  Friend("친구2", '$prefix/4/200/300'),
  Friend("친구3", '$prefix/5/200/300'),
  Friend("친구4", '$prefix/6/200/300'),
  Friend("친구5", '$prefix/7/200/300'),
  Friend("친구6", '$prefix/8/200/300'),
  Friend("친구7", '$prefix/9/200/300'),
  Friend("친구8", '$prefix/10/200/300'),
  Friend("친구9", '$prefix/11/200/300'),
];
