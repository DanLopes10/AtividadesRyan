import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Perfil',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const UserProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil do Usuário'), centerTitle: true),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: const Offset(0, 4),
                blurRadius: 6,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Foto do perfil
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/perfil.jpg'),
              ),

              const SizedBox(height: 16),

              // Nome do usuário
              const Text(
                'Danilo Lopes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              // Username
              const Text(
                '@dani.lolopes',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 24),

              // Estatísticas
              Row(
                children: [
                  // Posts
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '50',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Posts', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),

                  // Seguidores
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '1.2K',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Seguidores',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),

                  // Seguindo
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          '200',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Seguindo', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Botão "Editar Perfil"
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Ação para editar o perfil
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Editar Perfil',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
