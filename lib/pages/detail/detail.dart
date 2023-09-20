import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/widget/detail_sliver.dart';
import 'package:gamestore/pages/detail/widget/gameinfo.dart';


class DetailPage extends StatelessWidget {
  const DetailPage(this.game,{ super.key});

  final Game game;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 450,
              roundedContainerHeight: 30,
            ),
          ),
        
     SliverToBoxAdapter(
            child: GameInfo(game),
          )
          
          ],
      ),
    );
    
  }      

}
