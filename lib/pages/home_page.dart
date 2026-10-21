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

  String _searchQuery = "";
  bool _showFavoriteOnly = false;
  final Set<String> _favoritePokemon = {};
  final TextEditingController _searchController = TextEditingController();

  void _toggleFavorite(String name) {
    setState(() {
      if (_favoritePokemon.contains(name)) {
        _favoritePokemon.remove(name);
      } else {
        _favoritePokemon.add(name);
      }
    });
  }

  Future<void> _openDetail(pokemon, bool isFavorite) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailPage(pokemon: pokemon, isFavorite: isFavorite),
      ),
    );
    // ! + =
    if (result != null) {
      setState(() {
        if (result) {
          _favoritePokemon.add(pokemon.name);
        } else {
          _favoritePokemon.remove(pokemon.name);
        }
      });
    }
  }

  bool isSwitch = false; // gak dipake sample aja

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(
      context,
    ).size; //mengatahui resolusi layar device

    //filter pokemon berdasarkan kata kunci
    final filtered = dataPokemon.where((p) {
      // query => kata kunci yang diinputkan oleh user
      final q = _searchQuery.toLowerCase();
      // cek apakah kata kunci ada di nama pokemon
      final matchesSearch = p.name.toLowerCase().contains(q);
      // cek apakah pokemon tersebut ada di favorite
      final matchesFavorite =
          !_showFavoriteOnly || _favoritePokemon.contains(p.name);
      // jika kata kunci ada di nama pokemon dan pokemon tersebut ada di favorite
      return matchesSearch && matchesFavorite;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pokémon GO",
          style: TextStyle(
            fontFamily: "Pokemon",
            fontSize: 32,
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        actions: [Text('$screenSize')],
        // Text('$screenSize')
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Search Pokemon",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Switch(value: isSwitch, onChanged: (value) {}),
              ],
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                //425 Mobile
                //768 Tablet
                //1024 Desktop
                if (constraints.maxWidth <= 425) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final pokemon = filtered[index];
                      final isFavorite = _favoritePokemon.contains(
                        pokemon.name,
                      );
                      return PokemonList(
                        pokemon: pokemon,
                        isFavorite: isFavorite,
                        onTap: () {
                          _openDetail(pokemon, isFavorite);
                        },
                        isFavoriteTap: () {
                          _toggleFavorite(pokemon.name);
                        },
                      );
                    },
                    itemCount: filtered.length,
                  );
                } else if (constraints.maxWidth <= 768) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return PokemonCard(
                        pokemon: pokemon[index],
                        type: pokemon[index].type,
                        isFavorite: true,
                        onTap: () {
                          _openDetail(pokemon, true);
                        },
                        onFavoriteTap: () {},
                      );
                    },
                    itemCount: pokemon.length,
                  );
                } else {
                  return GridView.builder(
                    itemBuilder: (context, index) => PokemonCard(
                      pokemon: pokemon[index],
                      type: pokemon[index].type,
                      isFavorite: true,
                      onTap: () {
                        _openDetail(pokemon, true);
                      },
                      onFavoriteTap: () {},
                    ),
                    itemCount: pokemon.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
