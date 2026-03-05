import 'package:flutter/material.dart';

class NotificacionesScreen extends StatelessWidget {
  const NotificacionesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notificaciones"), backgroundColor: Colors.black),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(15), child: Text("Novedades", style: TextStyle(fontWeight: FontWeight.bold))),
          _notif("Nueva película recomendada", "https://images.unsplash.com/photo-1485846234645-a62644f84728?w=200"),
          _notif("Se estrena mañana: Lupin", "https://images.unsplash.com/photo-1478720568477-152d9b164e26?w=200"),
        ],
      ),
    );
  }
  Widget _notif(String t, String url) => ListTile(
    leading: ClipRRect(borderRadius: BorderRadius.circular(4), child: Image.network(url, width: 80, height: 50, fit: BoxFit.cover)),
    title: Text(t, style: const TextStyle(fontSize: 14)),
    subtitle: const Text("Hace unos momentos", style: TextStyle(fontSize: 12)),
  );
}
