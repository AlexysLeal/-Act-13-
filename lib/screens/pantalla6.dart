import 'package:flutter/material.dart';

class EditarPerfilScreen extends StatelessWidget {
  const EditarPerfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar perfil"),
        backgroundColor: Colors.black,
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text("LISTO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))]
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.network('https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png', width: 110)),
                Container(color: Colors.black38, width: 110, height: 110),
                const Icon(Icons.edit, color: Colors.white, size: 40),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text("CAMBIAR ICONO", style: TextStyle(letterSpacing: 1.2)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(labelText: "NOMBRE", labelStyle: TextStyle(color: Colors.grey), enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))),
              controller: TextEditingController(text: "Juan Pérez"),
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800], padding: const EdgeInsets.symmetric(vertical: 15)), 
              child: const Text("GUARDAR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, padding: const EdgeInsets.symmetric(vertical: 15)), 
              child: const Text("ELIMINAR PERFIL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
