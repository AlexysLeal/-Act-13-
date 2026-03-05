import 'package:flutter/material.dart';

class BuscarScreen extends StatelessWidget {
  const BuscarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buscar"), backgroundColor: Colors.black),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(color: Colors.grey[850], borderRadius: BorderRadius.circular(5)),
            child: const TextField(decoration: InputDecoration(hintText: "Buscar series, películas...", border: InputBorder.none, icon: Icon(Icons.search, color: Colors.grey))),
          ),
          Expanded(
            child: ListView(
              children: [
                _searchTile("Berlín", "https://images.unsplash.com/photo-1536440136628-849c177e76a1?w=400"),
                _searchTile("The Crown", "https://images.unsplash.com/photo-1594909122845-11baa439b7bf?w=400"),
                _searchTile("One Piece", "https://images.unsplash.com/photo-1534447677768-be436bb09401?w=400"),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _searchTile(String t, String url) => ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    leading: ClipRRect(borderRadius: BorderRadius.circular(4), child: Image.network(url, width: 120, height: 70, fit: BoxFit.cover)),
    title: Text(t, style: const TextStyle(fontSize: 14)),
    trailing: const Icon(Icons.play_circle_outline, size: 30),
  );
}
