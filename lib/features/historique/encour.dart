
import 'package:flutter/material.dart';

import '../../customs/custom_cart_item.dart';
import '../../customs/custom_histo_item.dart';

 class CartencourScreen extends StatelessWidget {
  const CartencourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(1.27, 1.54),
                  end: const Alignment(0, 0),
                  colors: [
                    Colors.green.shade200,
                    const Color.fromARGB(255, 51, 51, 51)
                  ])),
          child: const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'commande en cours',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                CustomHistoItem(
                    discrptif: "commande 001",
                    name: "Paiement: En attente",
                    date: "merc 13/02/2024 à 10.00",
                    quantity: 'x2',
                  price: 'Montant : 10.50',),
                CustomHistoItem(
                  discrptif: "commande 001",
                  name: "Paiement: En attente",
                  date: "merc 13/02/2024 à 10.00",
                  quantity: 'x2',
                  price: 'Montant : 10.50',),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
