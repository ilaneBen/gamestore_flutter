import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamestore/pages/login.dart';
// import 'package:gamestore/pages/login.dart';
// import 'package:gamestore/pages/home/home.dart';
import 'package:gamestore/pages/wrapper.dart';
import 'package:gamestore/pages/services/authentification.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    
    MultiProvider(providers: [
      StreamProvider.value(
        initialData: null,
        value: AuthService().user,
      )
    ],
    child: MyApp(),
    )

  );
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamestore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      
      home: login(),
    );
  }

}