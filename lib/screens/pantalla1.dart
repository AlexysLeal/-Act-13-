import 'package:flutter/material.dart';
import 'package:myapp/screens/pantalla6.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text('N', style: TextStyle(color: Colors.red, fontSize: 38, fontWeight: FontWeight.bold)),
            const SizedBox(width: 30),
            TextButton(
              onPressed: () {},
              child: const Text("Series", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: const Text("Películas", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 20),
            TextButton(
              onPressed: () {},
              child: const Text("Categorías", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png', width: 28),
            ),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const EditarPerfilScreen())),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHero(),
          _buildSection("Tendencias", [
            'https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?w=400',
            'https://images.unsplash.com/photo-1616530940355-351fabd9524b?w=400',
            'https://images.unsplash.com/photo-1594909122845-11baa439b7bf?w=400',
          ], isHorizontal: true),
        ],
      ),
    );
  }

  Widget _buildHero() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/original/dDlEsimgyoCL4LNvZu0AtsfkcFo.jpg', 
          height: 600, width: double.infinity, fit: BoxFit.cover,
        ),
        Container(
          height: 600,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.transparent, Colors.black]),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.network(
              'https://raw.githubusercontent.com/AlexysLeal/-Act-13-/main/squid%20game.jfif',
              height: 180,
            ),
            const SizedBox(height: 20),
            const Text("SQUID GAME", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 2)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 20)), 
                  onPressed: () {}, 
                  icon: const Icon(Icons.play_arrow), 
                  label: const Text("Reproducir")
                ),
                const SizedBox(width: 15),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]), 
                  onPressed: () {}, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Mi lista")
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        )
      ],
    );
  }

  Widget _buildSection(String title, List<String> imgs, {bool isHorizontal = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.all(12), child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        SizedBox(
          height: isHorizontal ? 130 : 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgs.length,
            itemBuilder: (context, i) => Container(
              width: isHorizontal ? 210 : 135,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imgs[i], fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
