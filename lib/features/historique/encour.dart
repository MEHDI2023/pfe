import 'package:flutter/material.dart';
import 'package:newburger/customs/CustomStepIndicator.dart';

class CommandeEncour extends StatelessWidget {
  final List<Map<String, dynamic>> orders = [
    {
      'time': '22/02/2024 à 11:25',
      'amount': '7.00 €',
      'status': 'En attente',
    },
    // Add more orders if needed
  ];

  CommandeEncour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      color: Colors.white, // A color that contrasts well on both light and dark background
      // You might want to adjust other properties like font size, weight, etc.
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.27, 1.54),
            end: Alignment(0, 0),
            colors: [
              Colors.green.shade200,
              Color.fromARGB(255, 51, 51, 51),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              final order = orders[index];
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(order['time'], style: textStyle),
                      Row(
                        children: [
                          Icon(Icons.qr_code, color: Colors.white), // Adjust icon color too if needed
                          SizedBox(width: 10),
                          Text('Montant: ${order['amount']}', style: textStyle),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.restaurant_menu, color: Colors.white), // Adjust icon color too if needed
                          SizedBox(width: 10),
                          Text('Commande: ${order['status']}', style: textStyle),
                        ],
                      ),
                      Text('Paiement: ${order['status']}', style: textStyle),
                    ],
                  ),
                  SizedBox(height: 16),
                  CustomStepIndicator(), // Make sure CustomStepIndicator also has proper contrast
                  Divider(height: 40, thickness: 1, color: Colors.white), // Adjust divider color for visibility
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
