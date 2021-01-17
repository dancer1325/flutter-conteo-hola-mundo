import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  //The instance's _ContadorPageState can be created using new
  //createState() => new _ContadorPageState();
  createState() => _ContadorPageState();

}

//Since it's the Contador's state -> It's the generic
class _ContadorPageState extends State<ContadorPage> {

  //Since the variable are used just in this class -> They are done private
  final _estiloTexto = new TextStyle( fontSize: 25 );

  //Here, we can see that the variable musn't be done final in StatefulWidget
  int _conteo = 0;

  //Similar to the  StatelessWidget's build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de taps:', style: _estiloTexto ),
            Text( '$_conteo'  , style: _estiloTexto ),
          ],
        )
      ),
      //1º version just with 1 floatingActionButton
      // floatingActionButton: FloatingActionButton(
      //   child: Icon( Icons.add ),
      //   onPressed: () {
      //     print('Hola Mundo!');
      //     //If we put _conteo variable out of setState -> StatefulWidget won't be redrawn. Sometimes all the code contained, including print()
      //     //is putting into setState
      //     //_conteo = _conteo + 1;
      //     //_conteo++;
      //     setState(() {
      //       _conteo++;
      //     })

      //   },
      // ),
      //2º version with several FloatingActionButton. To extract outside to be more readable
      floatingActionButton: _crearBotones()
    );
  }


  //Not to forget that floatingActionButton is a Widget.
  // It's optional to indicate that returns a Widget because it's guess by Flutter
  //Widget _crearBotones() {
  Widget _crearBotones() {
    //Row. Another Widget displaying their children in horizontal
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.exposure_zero ), onPressed: _reset ),
        //To separate one widget to others, fulfilling all the size. You can use an Expanded with a child a SizeBox empty
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        //With "()", the method will be invoked when the Row is drawn, and not just when the event onPressed is launched
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _agregar() ),
        //To refer the method and to be invoked each time is launched the event onPressed. Atenttion. The last element has got a , at the end
        FloatingActionButton( child: Icon(Icons.add ), onPressed: _agregar ),
      ],
    );
  
  }

  //All the functions with the setState to redraw it, updating the _conteo variable
  void _agregar() {
    setState(() => _conteo++ );
  }

  void _sustraer() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }


}

