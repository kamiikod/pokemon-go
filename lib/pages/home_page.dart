import 'package:flutter/material.dart';
import 'package:flutter_apps/data/pokemon_data.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/pages/detail_page.dart';
import 'package:flutter_apps/widgets/pokemon_card.dart';
import 'package:flutter_apps/widgets/pokemon_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  
  @override
  State<HomePage> createState() => _HomePageState(); 
}

class _HomePageState extends State<HomePage> {


  final List<Pokemon> pokemon = dataPokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon Go"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_outlined),
        actions: [
          Icon(Icons.favorite),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView.builder(
        itemCount: pokemon.length,
        itemBuilder: (BuildContext context, int index) {
          return PokemonList(pokemon: pokemon[index]);
        },
      ),
    );
  }
}
