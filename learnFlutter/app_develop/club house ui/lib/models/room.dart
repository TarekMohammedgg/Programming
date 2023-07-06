import "user.dart";

class Room {
  final String club;
  final String name;
  final List<User> speakers;
  final List<User> followerspeakers;
  final List<User> others;

  Room(
      {required this.club,
      required this.name,
      this.speakers = const [],
      this.followerspeakers = const [],
      this.others = const []});
}
