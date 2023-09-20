import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gamestore/pages/services/authentification.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<login> {
  bool inloginProcess = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: const BoxDecoration(
                color: Colors.limeAccent,
                image: DecorationImage(image: 
                AssetImage('assets/images/avatar.png',),
                fit: BoxFit.cover,),
              
              ),
            ),
            Text('La Grilladerie',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold,
            ),
            ),
            Padding(padding: const EdgeInsets.all(12),
            child: Text('Découvrez et partagez nos meilleures Menu',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold,
            ),
            ),
            ),
            inloginProcess
            ? Center(child:  CircularProgressIndicator()) 
            : ElevatedButton(
              onPressed: () => signin(),
              child: Text('Connectez-vous avec Google'))
          ],
        ),
      ),
      ),
    );
  }
 signin(){
  inloginProcess = true;
  AuthService().signInWithGoogle();
 }
}