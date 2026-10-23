import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/widgets/type_chip.dart';
import '../data/pokemon_data.dart';

class DetailPage extends StatefulWidget {
  final Pokemon pokemon;
  final String type;
  final bool isFavorite;

  const DetailPage({
    super.key,
    required this.pokemon,
    required this.type,
    required this.isFavorite,
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
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late bool _isFavorite;
  bool _canPop = false;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  @override
  void _handleBack(){
    if (_canPop) return;
    setState(() {
      _canPop = true;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Navigator.pop(context, _isFavorite);
      }
    },);
  }

  @override
  Widget build(BuildContext context) {
    final pokemon = widget.pokemon;
    final List<Widget> imageSlider = pokemon.movies
        .map<Widget>(
          (url) => Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                url,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),
          ),
        )
        .toList();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: ((didPop, result) {
        if (didPop) return;
        Navigator.pop(context, _isFavorite);
      }),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            pokemon.name,
            style: TextStyle(
              fontFamily: 'Pokemon',
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context, _isFavorite);
            },
            icon: Icon(Icons.arrow_back_outlined),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                _isFavorite = !_isFavorite;
                });
              },
              icon: _isFavorite
                  ? Icon(Icons.favorite, color: Colors.pink)
                  : Icon(Icons.favorite_border_rounded),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Hero(
                        tag: pokemon.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(pokemon.image, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              pokemon.name,
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            TypeChip(type: pokemon.type),
                            Text(
                              "Base Power : ${pokemon.basePower}",
                              style: TextStyle(
                                fontFamily: 'Montserrat',

                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Deskripsi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              pokemon.description,
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Skills",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),

                            SizedBox(height: 8),
                            Row(
                              children: [
                                Wrap(
                                  children: pokemon.skills
                                      .map(
                                        (e) => Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 4,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black12,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(Icons.star),
                                              SizedBox(width: 8),
                                              Text(e),
                                            ],
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ],
                            ),

                            SizedBox(height: 5),

                            // slider
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                aspectRatio: 2.0,
                                enlargeCenterPage: false,
                                viewportFraction: 1,
                              ),
                              itemCount: (pokemon.movies.length / 2).ceil(),
                              itemBuilder: (context, index, realIdx) {
                                final int first = index * 2;
                                final int second = first + 1;
                                return Row(
                                  children: [first, second].map((idx) {
                                    return Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: Image.network(
                                          pokemon.movies[idx],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                );
                              },
                            ),

                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        child: Image.asset(
                          pokemon.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            pokemon.name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(999),
                              border: Border.all(
                                width: 1,
                                color: Colors.blue,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Text(pokemon.type),
                          ),
                          Text(
                            "Base Power : ${pokemon.basePower}",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Deskripsi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            pokemon.description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Skills",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 8),

                          // skills (tanpa Row pembungkus)
                          Wrap(
                            children: pokemon.skills
                                .map(
                                  (e) => Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black12,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.star),
                                        SizedBox(width: 8),
                                        Text(e),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          SizedBox(height: 16),

                          // slider vertikal (langsung di Column)
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 220,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                            ),
                            items: imageSlider,
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
