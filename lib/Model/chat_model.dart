class ChatModel {
  late String name;
  late String icon;
  late String time;
  late String currentMessage;
  late bool isGroup;
  ChatModel(
      {required this.name,
      required this.icon,
      required this.time,
      required this.currentMessage,
      required this.isGroup});
}
