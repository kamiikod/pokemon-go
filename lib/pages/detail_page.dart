import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/models/pokemon.dart';
import 'package:flutter_apps/widgets/type_chip.dart';
import '../data/pokemon_data.dart';

class DetailPage extends StatefulWidget {
  final Pokemon pokemon;
  final bool isFavorite;

  const DetailPage({
    super.key,
    required this.pokemon,
    required this.isFavorite,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSlider = widget.pokemon.movies
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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.pokemon.name,
          style: TextStyle(fontFamily: 'Pokemon', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.favorite_border), SizedBox(width: 10)],
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
                      tag: widget.pokemon.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          widget.pokemon.image,
                          fit: BoxFit.cover,
                        ),
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
                            widget.pokemon.name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                          TypeChip(type: widget.pokemon.type),
                          Text(
                            "Base Power : ${widget.pokemon.basePower}",
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
                            widget.pokemon.description,
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
                                children: widget.pokemon.skills
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
                            itemCount: (widget.pokemon.movies.length / 2)
                                .ceil(),
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
                                        widget.pokemon.movies[idx],
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
                        widget.pokemon.image,
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
                          widget.pokemon.name,
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
                          child: Text(widget.pokemon.type),
                        ),
                        Text(
                          "Base Power : ${widget.pokemon.basePower}",
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
                          widget.pokemon.description,
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
                          children: widget.pokemon.skills
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
    );
  }
}
