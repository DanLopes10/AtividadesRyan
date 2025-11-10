import 'package:flutter/material.dart';
import 'chat_list_item.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> chats = [
      {
        'nome': 'Ana Clara',
        'ultimaMensagem': 'te amanhã',
        'foto': 'assets/Ana.png',
        'horario': '09:15',
      },
      {
        'nome': 'Marcelo Dias',
        'ultimaMensagem': 'to aprontando, usando arch linux com hyperland',
        'foto': 'assets/marcelo.png',
        'horario': 'Ontem',
      },
      {
        'nome': 'Samurai Cat',
        'ultimaMensagem': 'Assit it bem vindpoa Derry',
        'foto': 'assets/samuraiCat.png',
        'horario': 'Dom',
      },
      {
        'nome': 'Maria',
        'ultimaMensagem': 'Enviou uma foto',
        'foto': 'assets/Maria.png',
        'horario': '08:42',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Conversas'), centerTitle: true),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ChatListItem(
            nome: chat['nome']!,
            ultimaMensagem: chat['ultimaMensagem']!,
            foto: chat['foto']!,
            horario: chat['horario']!,
          );
        },
      ),
    );
  }
}
