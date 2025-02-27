class Achievement {
  final String title;
  final String description;
  bool isCompleted;

  Achievement({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}
