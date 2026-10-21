

class Pokemon {
  //properties
  final String name;
  final String image;
  final String type;
  final int basePower;
  final String description;
  final List<String> skills;
  final List<String> movies;

  // Properties Baru
  final String height; // Contoh: "0.7 m"
  final String weight; // Contoh: "6.9 kg"
  final String category; // Contoh: "Seed Pokémon", "Lizard Pokémon"
  final String ability; // Contoh: "Overgrow", "Blaze", "Static"
  final List<String> weaknesses; // Contoh: ["Fire", "Psychic", "Flying"]
  final Map<String, int>
  stats; // Contoh: {'HP': 45, 'Attack': 49, 'Defense': 49, 'Speed': 45}
  final List<String>?
  evolutions; // Contoh: ["Bulbasaur", "Ivysaur", "Venusaur"]


  Pokemon({
    required this.name,
    required this.image,
    required this.type,
    required this.basePower,
    required this.description,
    required this.skills,
    required this.movies,
    required this.height,
    required this.weight,
    required this.category,
    required this.ability,
    required this.weaknesses,
    required this.stats,
    required this.evolutions,

  });

  //  CTRL + ALT + L => REFORMAT CODE
  // ANDROID STUDIO
}
