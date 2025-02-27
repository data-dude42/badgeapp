import 'package:flutter/material.dart';
import '../models/achievement.dart';

class AchievementProvider with ChangeNotifier {
  final List<Achievement> _achievements = [
    Achievement(title: "First Login", description: "Logged in for the first time"),
    Achievement(title: "5 Logins", description: "Logged in 5 times"),
    Achievement(title: "Completed Profile", description: "Filled all profile details"),
  ];

  List<Achievement> get achievements => _achievements.where((ach) => ach.isCompleted).toList();

  void completeAchievement(String title) {
    for (var ach in _achievements) {
      if (ach.title == title) {
        ach.isCompleted = true;
        notifyListeners();
        break;
      }
    }
  }
}
