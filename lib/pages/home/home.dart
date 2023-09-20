import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/widget/category.dart';
import 'package:gamestore/pages/home/widget/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.blue,
      body: SingleChildScrollView(
          child: Stack(
            children: [
              Transform(transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset('assets/images/bg_liquid.png',
              width: 200,)
              ,),
              
              Positioned(
              right: 0,
              top: 200,
              child:  Transform(transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 100),
              child: Image.asset('assets/images/bg_liquid.png',
              width: 200,)
              ,)),
              Column(
                children: [
                 
                  SearchSection(),
                  CategorySection(),
                ],
              ),
            ],
          )
       ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.menu),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.food_bank),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.home),
        ),
      ],
    );
  }
}