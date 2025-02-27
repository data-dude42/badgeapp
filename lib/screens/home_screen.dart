import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/achievement_provider.dart';
import 'badge_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AchievementProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Achievement Tracker"),
        actions: [
          IconButton(
            icon: const Icon(Icons.emoji_events),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const BadgeScreen()),
            ),
          ),
        ],
      ),
      body: ListView(
        children: provider.achievements.isEmpty
            ? [const Center(child: Text("No Achievements Completed"))]
            : provider.achievements.map((ach) {
                return ListTile(
                  title: Text(ach.title),
                  subtitle: Text(ach.description),
                  trailing: const Icon(Icons.check_circle, color: Colors.green),
                );
              }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.completeAchievement("First Login"),
        child: const Icon(Icons.add),
      ),
    );
  }
}
