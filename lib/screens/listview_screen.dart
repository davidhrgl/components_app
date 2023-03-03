import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<String> games = ["Mario Bros", "The Last of Us", "Gran Turismo", "Resident Evil"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(games[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            iconColor: Colors.indigo,
            onTap: () {
              
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: games.length),
    );
  }
}
