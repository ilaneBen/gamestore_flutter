import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:readmore/readmore.dart';

class DescriptionSection extends StatelessWidget {
final Game game;

  const DescriptionSection(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 25),
     child: ReadMoreText(
      game.description,
      trimLines: 3,
      trimMode: TrimMode.Line,
      trimCollapsedText: 'plus',
      trimExpandedText: 'reduire',
      colorClickableText: Color.fromARGB(255, 0, 115, 255),
      style: TextStyle(
        height: 1.5,
        color: Color.fromARGB(100, 0, 0, 0),
      ),
     ),
    );
  }
}