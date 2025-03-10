import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewScreen(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ListViewScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transportOptions = [
    {'icon': Icons.directions_bike, 'text': 'Bicicleta', 'color': Colors.blue[300], 'iconColor': Colors.blue[900], 'textColor': Colors.white},
    {'icon': Icons.directions_boat, 'text': 'Barco', 'color': Colors.green[300], 'iconColor': Colors.green[900], 'textColor': Colors.white},
    {'icon': Icons.directions_bus, 'text': 'Autobús', 'color': Colors.orange[300], 'iconColor': Colors.orange[900], 'textColor': Colors.white},
    {'icon': Icons.directions_car, 'text': 'Coche', 'color': Colors.red[300], 'iconColor': Colors.red[900], 'textColor': Colors.white},
    {'icon': Icons.directions_railway, 'text': 'Tren', 'color': Colors.purple[300], 'iconColor': Colors.purple[900], 'textColor': Colors.white},
    {'icon': Icons.directions_run, 'text': 'Correr', 'color': Colors.yellow[300], 'iconColor': Colors.yellow[900], 'textColor': Colors.black},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Emmanuel Salcido Mat:22308051281097',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: transportOptions.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Espaciado alrededor
            padding: EdgeInsets.all(16), // Espaciado interno
            decoration: BoxDecoration(
              color: transportOptions[index]['color'],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: ListTile(
              leading: Icon(
                transportOptions[index]['icon'],
                color: transportOptions[index]['iconColor'],
                size: 40, // Icono más grande
              ),
              title: Text(
                transportOptions[index]['text'],
                style: TextStyle(
                  fontSize: 22, // Texto más grande
                  fontWeight: FontWeight.bold,
                  color: transportOptions[index]['textColor'],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
