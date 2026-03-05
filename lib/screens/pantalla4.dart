import 'package:flutter/material.dart';

class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cats = [
      {'n': 'Acción', 'c': Colors.redAccent}, {'n': 'Comedia', 'c': Colors.orangeAccent},
      {'n': 'Documentales', 'c': Colors.blueAccent}, {'n': 'Drama', 'c': Colors.purpleAccent},
      {'n': 'Ciencia ficción', 'c': Colors.teal}, {'n': 'Terror', 'c': Colors.blueGrey},
      {'n': 'Romance', 'c': Colors.pinkAccent}, {'n': 'Animación', 'c': Colors.greenAccent},
      {'n': 'Suspenso', 'c': Colors.deepOrange}, {'n': 'Originales', 'c': Color(0xFFE50914)},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text("Categorías"), backgroundColor: Colors.black),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.5, mainAxisSpacing: 12, crossAxisSpacing: 12),
        itemCount: cats.length,
        itemBuilder: (context, i) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [cats[i]['c'], cats[i]['c'].withOpacity(0.5)]),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text(cats[i]['n'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17))),
        ),
      ),
    );
  }
}
