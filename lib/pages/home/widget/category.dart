import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widget/Newest.dart';
import 'package:gamestore/pages/home/widget/popular.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final categories = const [
  
    {
      'icon': Icons.track_changes_outlined,
      'color':  Color(0xFF605CF4),
      'title': 'Arcade',
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Color.fromARGB(255, 255, 0, 0),
      'title': 'Racing',
    },
    {
      'icon': Icons.cases_outlined,
      'color': Color.fromARGB(255, 147, 143, 255),
      'title': 'Strategie',
    },
    {
      'icon': Icons.sports_esports,
      'color': Color.fromARGB(255, 255, 0, 255),
      'title': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Column(
             children: [
              const SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color: categories[index]['color'] as Color),
                child:
              Icon(categories[index]['icon'] as IconData,
              color: Colors.white,
              size: 40,
              
              ),
              ),
              const SizedBox(height: 10,),
              Text(categories[index]['title'] as String,
              style: TextStyle(
                 color: Colors.black.withOpacity(0.7),
                 fontWeight: FontWeight.bold,
                 fontSize: 16,
                 )
              ),
             
             ],
              )), 
            separatorBuilder: ((context, index) => SizedBox(width: 33,)), 
            itemCount: categories.length,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: const Text('jeux Populaire',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ),
          PopularGame(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: const Text('Nouveaux jeux',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}