import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  //All the StatelessWidget's instance fields must be immutable --> final
  final estiloTexto = new TextStyle( fontSize: 25 );

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de clicks:', style: estiloTexto ),
            //To get the String from a int
            //Text( conteo.toString()  , style: estiloTexto ),
            Text( '$conteo'  , style: estiloTexto ),
          ],
        )
      ),
      //Property to place the floatingActionButton
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        //onPressed. Required property
        //onPressed: null  ==== To disable the property
        onPressed: () {

          print('Hola Mundo!');
          //We can't change the value of the variable, since the class extends to StatelessWidget, and all are instance fields are final
          // conteo = conteo + 1;

        },
      ),
    );
  }


}