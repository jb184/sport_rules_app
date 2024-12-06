import 'package:flutter/material.dart';
import 'package:sport_rules_app/pages/sport_page.dart';

void main() {
  runApp(SportRulesApp());
}

class SportRulesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sport Rules App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> sports = [
    {"name": "Football", "image": "images_sport/image_football.jpg"},
    {"name": "Judo", "image": "images_sport/image_judo.jpg"},
    {"name": "Basketball", "image": "images_sport/image_basketball.jpg"},
    {"name": "Tennis", "image": "images_sport/image_tennis.jpg"},
    {"name": "Rugby", "image": "images_sport/image_rugby.jpg"},
    {"name": "Natation", "image": "images_sport/image_natation.jpg"},
    {"name": "Cyclisme", "image": "images_sport/image_cyclisme.jpg"},
    {"name": "Boxe", "image": "images_sport/image_boxe.jpg"},
    {"name": "Golf", "image": "images_sport/image_golf.jpg"},
    {"name": "Handball", "image": "images_sport/image_handball.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport Rules App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Nombre de colonnes
            childAspectRatio: 0.75, // Ratio hauteur/largeur (adaptable)
            crossAxisSpacing: 8.0, // Espacement horizontal
            mainAxisSpacing: 8.0, // Espacement vertical
          ),
          itemCount: sports.length,
          itemBuilder: (context, index) {
            final sport = sports[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SportPage(sportName: sport['name']!),
                  ),
                );
              },
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(sport['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    sport['name']!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
