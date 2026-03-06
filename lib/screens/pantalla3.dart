import 'package:flutter/material.dart';

class NuevoPopularScreen extends StatelessWidget {
  const NuevoPopularScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuevo y popular"), backgroundColor: Colors.black),
      body: ListView(
        children: [
          _newsItem("Stranger Things 5", "MUY PRONTO", "https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?w=600"),
          _newsItem("The Witcher", "NUEVA TEMPORADA", "https://images.unsplash.com/photo-1514539079130-25950c84af65?w=600"),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "Vale la pena esperar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          _newsItem("Matrix Resurrections", "PRÓXIMAMENTE", "https://images.unsplash.com/photo-1585647347483-22b66260dfff?w=600"),
        ],
      ),
    );
  }
  Widget _newsItem(String t, String d, String url) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.network(url, height: 220, width: double.infinity, fit: BoxFit.cover),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(d, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 12)),
            Text(t, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("No te pierdas el estreno mundial este mes.", style: TextStyle(color: Colors.grey, fontSize: 14)),
          ],
        ),
      ),
      const SizedBox(height: 10),
    ],
  );
}
