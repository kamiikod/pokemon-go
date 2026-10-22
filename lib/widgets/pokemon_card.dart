import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';

class PokemonCard extends StatelessWidget {
  //properties
  final Pokemon pokemon;
  final String type;

  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  //constructor
  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.type,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    Color _typeColor() {
      if (type.contains('Water')) return Colors.blue;
      if (type.contains('Poison')) return Colors.purple;
      if (type.contains('Grass')) return Colors.green;
      if (type.contains('Electric')) return Colors.amber;
      if (type.contains('Dragon')) return Colors.indigo;
      if (type.contains('Fire')) return Colors.red;
      if (type.contains('Ice')) return Colors.teal;
      if (type.contains('Normal')) return Colors.grey;
      if (type.contains('Fighting')) return Colors.orange;
      return Colors.amber;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: _typeColor().withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Hero(
              tag: pokemon.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  pokemon.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Text(pokemon.name)),
                  TypeChip(type: pokemon.type),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                pokemon.description,
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 10,
                  fontFamily: "Poppins",
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
