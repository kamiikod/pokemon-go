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

  Future<void> _openDetail(pokemon, bool isFavorite) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(pokemon: pokemon, isFavorite: isFavorite),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pokemon Go",
          style: TextStyle(
            fontFamily: 'PokemonSolid',
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_outlined),
        actions: [Icon(Icons.favorite), SizedBox(width: 10)],
      ),
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth <= 425) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return PokemonList(
                        pokemon: pokemon[index],
                        isFavorite: true,
                        onTap: () {},
                        isFavoriteTap: () {},
                      );
                    },
                    itemCount: pokemon.length,
                  );
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return PokemonCard(
                        pokemon: pokemon[index],
                        type: '',
                        isFavorite: true,
                        onTap: () {
                          _openDetail(pokemon, true);
                        },
                        onFavoriteTap: () {},
                      );
                    },
                    itemCount: pokemon.length,
                  );
                }
                ;
              },
            ),
          ),
        ],
      ),
    );
  }
}
