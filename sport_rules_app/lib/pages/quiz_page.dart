import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Center(
        child: Text(
          'Page du quiz en développement...',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
