import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> userData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: const Text('Información del Usuario')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${userData['name']}'),
            Text('Edad: ${userData['age']}'),
            Text('Fecha de Nacimiento: ${userData['dateOfBirth']}'),
            Text('Género: ${userData['gender']}'),
          ],
        ),
      ),
    );
  }
}
