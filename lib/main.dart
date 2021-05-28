import 'package:flutter/material.dart';
import 'package:perez/pages/first_page.dart';
import 'package:perez/pages/second_page.dart';
import 'package:perez/pages/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Burguer Perez',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    ); 
  } 
} 

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} 

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = FlutterLogo();
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } 
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue[500], size: 30.0), 
            title: Text('Inicio')), 
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.grey, size: 30.0), 
            title: Text('Registrarse')), 
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.blue[500], size: 30.0), 
            title: Text('Comprar')), 
      ]), 
    ); 
  } 
} 
