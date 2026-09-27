import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Perfil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Foto de perfil no centro
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.blue.shade100,
                foregroundImage: const NetworkImage(
                  'https://images.pexels.com/photos/33747946/pexels-photo-33747946.jpeg?_gl=1*16q0msp*_ga*MzU2MDY1NzQ2LjE3OTA1MDk5MjI.*_ga_8JE65Q40S6*czE3OTA1MDk5MjEkbzEkZzEkdDE3OTA1MTA2NzEkajYwJGwwJGgw',
                ),
                onForegroundImageError: (exception, stackTrace) {},
                child: const Icon(Icons.person, size: 60, color: Colors.blue),
              ),
              const SizedBox(height: 16),

              // Nome do usuário em destaque
              const Text(
                'maria madalena',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Informações de contato
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      'maria.madalena@estudante.ifgoiano.edu.br',
                      style: TextStyle(fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 8),
                  Text('(38) 40002-8922', style: TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 32),

              // Botão azul escrito "Seguir"
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                onPressed: () {
                  // Exibe a mensagem no SnackBar ao clicar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Você agora segue este perfil!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: const Text(
                  'Seguir',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
