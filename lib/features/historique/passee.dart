import 'package:flutter/material.dart';

class hhhhh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemple Flutter'),
        ),
        body: MeltingPotTest(),
      ),
    );
  }
}

class MeltingPotTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'MELTING POT TEST',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('22/02/2024 à 11:25'),
              Row(
                children: [
                  Icon(Icons.qr_code), // Utilisez l'icône de votre choix
                  SizedBox(width: 10),
                  Text('Montant: 7.00 €'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), // Remplacez 😎 par un nombre valide
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.restaurant_menu), // Utilisez l'icône de votre choix
                  SizedBox(width: 10),
                  Text('Commande: En attente'),
                ],
              ),
              Text('Paiement: En attente'),
            ],
          ),
          SizedBox(height: 16),
          CustomStepIndicator(),
        ],
      ),
    );
  }
}

class CustomStepIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStep(context, '1', 'Validée', true),
        _buildLine(context, true),
        _buildStep(context, '2', 'Préparation', false),
        _buildLine(context, false),
        _buildStep(context, '3', 'Prête', false),
      ],
    );
  }

  Widget _buildStep(BuildContext context, String number, String label, bool isActive) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: isActive ? Colors.black : Colors.grey,
          child: Text(number, style: TextStyle(color: Colors.white)),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildLine(BuildContext context, bool isActive) {
    return Expanded(
      child: Container(
        height: 2,
        color: isActive ? Colors.black : Colors.grey,
      ),
    );
  }
}
