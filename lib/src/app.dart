import 'package:flutter/material.dart';

import 'package:contador/src/pages/contador_page.dart';
// import 'package:contador/src/pages/home_page.dart';


class MyApp extends StatelessWidget {

  //Required method to override the StatelessWidget code
  @override
  Widget build( context ) {

    return MaterialApp(
      //To remove the banner top right
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );

  }


}