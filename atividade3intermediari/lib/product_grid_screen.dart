import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> produtos = [
      {
        'nome': 'MAchineki KB500 B61 Mini',
        'preco': 150.50,
        'desconto': 0.15,
        'imagem':
            'https://m.media-amazon.com/images/I/61tZYCa32KL._AC_SX679_.jpg',
      },
      {
        'nome': 'Atack Shark R1',
        'preco': 130.00,
        'desconto': 0.20,
        'imagem':
            'https://attackshark.com/cdn/shop/files/R1_8747f811-5ede-47a6-8b88-4b992277d196.jpg?v=1712558386&width=500',
      },
      {
        'nome': 'Mouse Pad 90x40 Branco',
        'preco': 87.95,
        'desconto': 0.10,
        'imagem':
            'https://m.media-amazon.com/images/I/71C4pz2UOaL._AC_SY300_SX300_QL70_ML2_.jpg',
      },
      {
        'nome': 'Controle T4 Nova Lite',
        'preco': 154.63,
        'desconto': 0.25,
        'imagem':
            'https://m.media-amazon.com/images/I/51K4vhxmKrL._AC_SX342_SY445_QL70_ML2_.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: produtos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.68, // proporção mais equilibrada
          ),
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return ProductCard(
              imageUrl: produto['imagem'],
              nome: produto['nome'],
              preco: produto['preco'],
              desconto: produto['desconto'],
            );
          },
        ),
      ),
    );
  }
}
