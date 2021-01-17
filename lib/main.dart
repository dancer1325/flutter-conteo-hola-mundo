import 'package:flutter/material.dart';
//Order to import the packages: 1º) The libraries, 2º) Our classes created

//Ways to import our classes: 
//A) Relative path
// import 'src/app.dart';
//B) Absolute path. VSC helps to import
import 'package:contador/src/app.dart';

void main() {
  //In Flutter to create a constructor isn't necessary to use the keyword new
  runApp( MyApp() );

}


