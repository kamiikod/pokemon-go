import 'package:flutter/material.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/type_chip.dart';
import 'package:flutter_apps/models/pokemon.dart';

class PokemonList extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonList({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    void _detailPage(Pokemon pokemon) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => DetailPage(pokemon: pokemon)),
      );
    }

    return ListTile(
      onTap: () => _detailPage(pokemon),
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
      title: Text(pokemon.name),
      subtitle: TypeChip(type: pokemon.type),
      trailing: Icon(Icons.favorite_border_outlined),
    );
  }
}
