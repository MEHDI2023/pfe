import 'package:flutter/material.dart';
import 'package:newburger/shared/CUBIT/cubit.dart';

class My extends StatefulWidget {
  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  late int Cindex;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEST SOFTAVERA'),
          backgroundColor: Colors.orange,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            // Ajoutez ici vos onglets ou un widget pour les gérer
            MenuItem(
              title: 'FORMULE VIENNOISERIE',
              price: '6.50 €',
              imageUrl: 'assets/images/img_3d_food_icon_by_276x276.png', // Remplacez avec l'URL de votre image
            ),
            MenuItem(
              title: 'FORMULE SALÉE',
              price: '7.00 €',
              imageUrl: 'assets/images/img_3d_food_icon_by_276x276.png',
            ),
            MenuItem(
              title: 'FORMULE TRIO',
              price: '6.90 €',
              imageUrl: 'assets/images/img_3d_food_icon_by_276x276.png',
            ),
            MenuItem(
              title: 'FORMULE 2 EGGS',
              price: '6.50 €',
              imageUrl: 'assets/images/img_3d_food_icon_by_276x276.png',
            ),
            // Continuer avec d'autres éléments de menu...
          ],
        ),

      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const MenuItem({
    Key? key,
    required this.title,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Prix $price',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}