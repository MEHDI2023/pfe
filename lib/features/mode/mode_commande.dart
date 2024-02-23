import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/home/home_screen.dart';
import '../../customs/custom_button.dart';
import '../../shared/CUBIT/order_cubit.dart';
import 'OrderPickupOptions.dart';

class RestaurantOrderScreen extends StatefulWidget {
  @override
  _RestaurantOrderScreenState createState() => _RestaurantOrderScreenState();
}

class _RestaurantOrderScreenState extends State<RestaurantOrderScreen> {
  String selectedOption = ''; // Pour stocker l'option sélectionnée

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey, // Couleur de substitution
                      ),
                      // Ajouter l'image/logo ici
                    ),
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<OrderCubit, String>(
                    builder: (context, selectedDeliveryTime) {
                      return Text(
                        selectedDeliveryTime.isNotEmpty ? 'Time   : $selectedDeliveryTime' : 'HH:MM',
                        style: TextStyle(color: Colors.white),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '24 B RUE LEONARD DE VINCI 91090 LISSES',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Méthodes de paiement acceptées:',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.payment),
                              // Ajouter des icônes de méthodes de paiement ici
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OrderPickupOptions(selectedOption, (value) {

                          setState(() {
                            selectedOption = value;
                            
                          });
                        }),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    child: CustomButton(
                      text: "To order",
                      onPressed: () {
                        // Check if any option is selected
                        if (selectedOption.isEmpty) {
                          // Show a dialog if no option is selected
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Select an option"),
                                content: Text("Please choose one of the options before proceeding."),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          // Navigate to the next screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
