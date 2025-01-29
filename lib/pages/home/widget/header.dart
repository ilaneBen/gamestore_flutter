// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  // const HeaderSection({super.key, User? user, required pageName});
  const HeaderSection({ required pageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      // height: 200,
      color: Colors.blue,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Wech mec', 
              style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 5,),
            Text('veux-tu jouer ?',
            style: TextStyle(
              fontSize: 19,
              color: Colors.white,
            ),)
          ],
        ),
        CircleAvatar(
          child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover,),
        )
      ],),
    );
  }
}