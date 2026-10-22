import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';
import 'package:flutter_apps/models/pokemon.dart';

class PokemonList extends StatelessWidget {
  final Pokemon pokemon;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;


  const PokemonList({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: Hero(
                tag: pokemon.name,
                child: Image.asset(
                  pokemon.image,
                  width: 56,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(pokemon.name)],
              ),
            ),
          ),
          Icon(Icons.favorite_border_rounded),
        ],
      ),
    );
  }
}
