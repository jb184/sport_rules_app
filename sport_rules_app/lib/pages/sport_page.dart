import 'package:flutter/material.dart';
import 'package:sport_rules_app/pages/quiz_page.dart';
import 'package:sport_rules_app/pages/rules_page.dart';
import 'package:sport_rules_app/pages/scenarios_page.dart';

class SportPage extends StatelessWidget {
  final String sportName;

  SportPage({required this.sportName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sportName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue dans la section $sportName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizPage(),
                  ),
                );
              },
              child: Text('Faire le quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RulesPage(sportName: sportName),
                  ),
                );
              },
              child: Text('Les règles du sport'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScenariosPage(sportName: sportName),
                  ),
                );
              },
              child: Text('Mises en situation'),
            ),
          ],
        ),
      ),
    );
  }
}
