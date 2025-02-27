import 'package:flutter/material.dart';
import 'package:flutter_badges/flutter_badges.dart';

class BadgeWidget extends StatelessWidget {
  final String title;

  const BadgeWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: const Icon(Icons.check, color: Colors.white),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
