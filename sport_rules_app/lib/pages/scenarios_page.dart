import 'package:flutter/material.dart';

class ScenariosPage extends StatelessWidget {
  final String sportName;

  ScenariosPage({required this.sportName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mises en situation - $sportName'),
      ),
      body: Center(
        child: Text(
          'Voici des mises en situation pour le sport $sportName. (À compléter)',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
