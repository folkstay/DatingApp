import 'package:dating_app/models/people_models.dart';
import 'package:dating_app/pages/chat/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/design/colors.dart';
import 'package:dating_app/design/images.dart';

class ChatScreen extends StatelessWidget {
  // Список людей
  final List<PeopleModel> people = [
    PeopleModel(
      id: '1',
      name: 'Антон',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now(),
      unreadCount: 3,
      isTyping: false,
    ),
    PeopleModel(
      id: '2',
      name: 'Максим',
      age: '30',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Договорились на завтра',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '3',
      name: 'Вадим',
      age: '28',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
      unreadCount: 1,
      isTyping: true,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        centerTitle: true,
        leading: Container(
          alignment: Alignment.center,
          child: penImage,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
              child: glassImage)
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: secondaryColor,
            height: 3.0,
          ),
        ),
        title: const Text('Сообщения',
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              fontFamily: 'Nunito',
            )),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return PeopleItem(person: people[index]);
        },
      ),
    );
  }
}
