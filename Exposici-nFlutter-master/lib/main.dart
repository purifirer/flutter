import 'package:flutter/material.dart';  //Libreria Importante para trabajar los widgets
import './app_screens/home.dart';


//Métdo principal y entrada de la aplicación
void main(){
  runApp(MaterialApp(           //RunApp Infla el Widget y lo muestra en la pantalla principal.
    debugShowCheckedModeBanner: false, //Quitar el logotipo que aparece en la parte superior derecha del app
    title: "Equipo de Futbol",   //Es el titulo del aPP - Se muestra al minimizar la App
    home: Scaffold( //Define la creación de la aplicación

      appBar: AppBar(title: Text("PROGRA III C.F"),backgroundColor: Colors.indigo,), //La barra superior de la App

      body:getListView(), // Es el metodo de abajo donde se encuentran la información
    )

  ));
}

// Declaración del método para crear la lista
Widget getListView(){

  var listView = ListView(  //almacenamos la lista en variable listWiev
    children: <Widget>[  //Declaramos como hijos porque almacena una lista de widgets

      ListTile( //La vista elejida para la cada información, por las opciones que posee
        leading: Icon(Icons.person),  //Parte derecha del widget
        title: Text("Angel ´Fernandinho´ Fernando"), //Título y parte central
        subtitle: Text("Técnica Demente"), //Subtitulo y parte central
        trailing: Text("10", style: TextStyle(fontSize: 30.5), ), //Parte final del widget
        onTap:(){ //Método para saber si se hizo click al objeto
          debugPrint("Texto Clickeado"); //Metodo para imprimir si se hizo click al objeto
        },
      ),

      ListTile(
        leading: Icon(Icons.person),
        title: Text("Jullyus Davis"),
        subtitle: Text("Vuelto Loco"),
        trailing: Text("11", style: TextStyle(fontSize: 30.5),),
        onTap:(){
          debugPrint("Texto Clickeado");
        },
      ),

      ListTile(
        leading: Icon(Icons.person),
        title: Text("Gustavo ´El Chamo´ Dominguez"),
        subtitle: Text("Características desconocidas"),
        trailing: Text("6", style: TextStyle(fontSize: 30.5),),
        onTap:(){
          debugPrint("Texto Clickeado");
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Geersooon Calixto", style: TextStyle(color: Colors.red),),
        subtitle: Text("Correcaminos"),
        trailing: Text("8", style: TextStyle(fontSize: 30.5),),
        onTap:(){
          debugPrint("Texto Clickeado");
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Than Córdova"),
        subtitle: Text("Carnicero por Excelencia"),
        trailing: Text("5", style: TextStyle(fontSize: 30.5),),
        onTap:(){
          debugPrint("Texto Clickeado");
        },
      ),


    ],
  );

  return listView;  //Manda el resultado
}