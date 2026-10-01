import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  final String type;
  const TypeChip({super.key, required this.type});

  Color _typerColor(){
    if(type.contains('Water')) return Colors.blue;
    if(type.contains('Fire')) return Colors.red;
    if(type.contains('Grass')) return Colors.green;
    if(type.contains('Electric')) return Colors.yellow;
    if(type.contains('Ice')) return Colors.cyan;
    if(type.contains('Fighting')) return Colors.orange;
    if(type.contains('Poison')) return Colors.purple;
    if(type.contains('Ground')) return Colors.brown;
    if(type.contains('Flying')) return Colors.indigo;
    if(type.contains('Psychic')) return Colors.pink;
    if(type.contains('Bug')) return Colors.lightGreen;
    if(type.contains('Rock')) return Colors.grey;
    if(type.contains('Ghost')) return Colors.deepPurple;
    if(type.contains('Dragon')) return Colors.deepOrange;
    if(type.contains('Dark')) return Colors.black;
    if(type.contains('Steel')) return Colors.blueGrey;
    if(type.contains('Fairy')) return Colors.pinkAccent;
    return Colors.grey; // Default color if no match is found
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _typerColor().withOpacity(0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: _typerColor(), width: 1)
      ),
      child: Text(type),
    );
  }
}
