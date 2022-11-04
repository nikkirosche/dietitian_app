// ignore_for_file: constant_identifier_names

enum Experience {
  Novice,
  Intermediate,
  Advanced,
  Expert,
}

class Dietitian {
  final String id;
  final String name;
  final String imageUrl;
  final Experience experience;
  final String background;

  const Dietitian({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.experience,
    required this.background,
  });
}
