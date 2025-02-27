import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_badges/flutter_badges.dart';
import '../providers/achievement_provider.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AchievementProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Your Badges")),
      body: provider.achievements.isEmpty
          ? const Center(child: Text("No badges earned yet"))
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: provider.achievements.length,
              itemBuilder: (context, index) {
                return Badge(
                  badgeContent: const Icon(Icons.star, color: Colors.white),
                  child: Card(
                    child: Center(
                      child: Text(provider.achievements[index].title),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
