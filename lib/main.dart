import 'package:flutter/material.dart';
import 'package:myapp/screens/pantalla1.dart';
import 'package:myapp/screens/pantalla2.dart';
import 'package:myapp/screens/pantalla3.dart';
import 'package:myapp/screens/pantalla4.dart';
import 'package:myapp/screens/pantalla5.dart';

void main() => runApp(const NetflixApp());

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.red,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red, // Menú en rojo
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

// --- NAVEGACIÓN PRINCIPAL ---
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const InicioScreen(),
    const BuscarScreen(),
    const NuevoPopularScreen(),
    const CategoriasScreen(),
    const NotificacionesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: 'Nuevo'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Categorías'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Alertas'),
        ],
      ),
    );
  }
}
