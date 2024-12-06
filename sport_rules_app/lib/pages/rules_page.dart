import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  final String sportName;

  RulesPage({required this.sportName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Règles - $sportName'),
      ),
      body: Center(
        child: Text(
          'Voici les règles du sport $sportName. (À compléter)',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
