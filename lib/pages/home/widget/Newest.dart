import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class NewestGame extends StatelessWidget {
    NewestGame({super.key});

    final List<Game> games = Game.games();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(children: 
        games
        .map((game) => Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(bottom: 20),
          child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              game.icon,
              width: 60,
            ),
          ),
          const SizedBox(width: 10,),
         Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
          Text(game.name,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [

              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text('Installer',
                style: TextStyle(
                  color: Colors.white,
                ),),
              )
            ],)
        ],) 
         )
         ])
         ),)
         .toList()
      ),
    );
  }
}