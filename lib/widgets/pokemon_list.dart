import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';
import 'package:flutter_apps/models/pokemon.dart';

class PokemonList extends StatelessWidget {
  final Pokemon pokemon;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;
  final String type;

  const PokemonList({
    super.key,
    required this.pokemon,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
    required this.type,
  });

  Color _typerColor() {
    if (type.contains('Water')) return Colors.blue;
    if (type.contains('Fire')) return Colors.red;
    if (type.contains('Grass')) return Colors.green;
    if (type.contains('Electric')) return Colors.yellow;
    if (type.contains('Ice')) return Colors.cyan;
    if (type.contains('Fighting')) return Colors.orange;
    if (type.contains('Poison')) return Colors.purple;
    if (type.contains('Ground')) return Colors.brown;
    if (type.contains('Flying')) return Colors.indigo;
    if (type.contains('Psychic')) return Colors.pink;
    if (type.contains('Bug')) return Colors.lightGreen;
    if (type.contains('Rock')) return Colors.grey;
    if (type.contains('Ghost')) return Colors.deepPurple;
    if (type.contains('Dragon')) return Colors.deepOrange;
    if (type.contains('Dark')) return Colors.black;
    if (type.contains('Steel')) return Colors.blueGrey;
    if (type.contains('Fairy')) return Colors.pinkAccent;
    return Colors.grey; // Default color if no match is found
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
        side: BorderSide(color: _typerColor()),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Hero(
          tag: pokemon.name,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
            child: Image.asset(
              pokemon.image,
              width: 67,
              height: 67,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          pokemon.name,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: TypeChip(type: pokemon.type),
        trailing: IconButton(
          onPressed: onFavoriteTap,
          icon: isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          color: isFavorite ? Colors.pink : Colors.grey,
        ),
      ),
    );
  }
}
