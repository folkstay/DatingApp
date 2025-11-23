class PeopleModel {
  final String id;
  final String name;
  final String age;
  final String photoUrl;
  final String? localImagePath;
  final bool isOnline;
  final bool isVip;
  final String lastMessage;
  final String timestamp;
  final int unreadCount;
  final bool isTyping;

  const PeopleModel({
    required this.id,
    required this.name,
    required this.age,
    required this.photoUrl,
    this.localImagePath,
    required this.isOnline,
    required this.isVip,
    required this.lastMessage,
    required this.timestamp,
    this.unreadCount = 0,
    this.isTyping = false,
  });
}
