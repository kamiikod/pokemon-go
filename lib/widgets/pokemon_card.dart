import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard({super.key, required this.pokemon});

  void _detailPage(BuildContext context, Pokemon pokemon){
    Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(pokemon: pokemon)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _detailPage(context, pokemon);
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        clipBehavior: Clip.antiAlias,
        child: Hero(
          tag: pokemon.name,
          child: Image.asset(
            pokemon.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
