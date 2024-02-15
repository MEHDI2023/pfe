import 'package:flutter/material.dart';

import '../layout/home_layout.dart';
import '../test.dart';

class RestaurantOrderScreen extends StatefulWidget {
  @override
  _RestaurantOrderScreenState createState() => _RestaurantOrderScreenState();
}

class _RestaurantOrderScreenState extends State<RestaurantOrderScreen> {
  String selectedOption = ''; // To store the selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey, // Placeholder color
                    ),
                    // Add image/logo here
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Implement time selection feature
                  },
                  child: Text('HH:MM'),
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
                            Icon(Icons.payment),
                            SizedBox(width: 8),
                            Text('Accepted Payment Methods:',
                                style: TextStyle(color: Colors.white)),
                            SizedBox(width: 8),
                            // Add payment method icons here
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
                          selectedOption = value!;
                        });
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Place Order'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderPickupOptions extends StatelessWidget {
  final String selectedOption;
  final ValueChanged<String?> onChanged;

  OrderPickupOptions(this.selectedOption, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Pickup Options:',
          style: TextStyle(color: Colors.white),
        ),
        RadioListTile(
          value: 'Deliver',
          groupValue: selectedOption,
          onChanged: (value) {
            onChanged(value);
            if (value == 'Deliver') {
              _showDeliveryTimePickerDialog(context);
            }
          },
          title: Text('Delivery', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile(
          value: 'Delivry',
          groupValue: selectedOption,
          onChanged: (value) {
            onChanged(value);
            if (value == 'Delivry') {
              _showDeliveryTimePickerDialog(context);
            }
          },
          title: Text('Delivery', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile(
          value: 'Dlivery',
          groupValue: selectedOption,
          onChanged: (value) {
            onChanged(value);
            if (value == 'Dlivery') {
              _showDeliveryTimePickerDialog(context);
            }
          },
          title: Text('Delivery', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  // Function to show the time picker dialog
  void _showDeliveryTimePickerDialog(BuildContext context) {
    List<String> deliveryTimes = [
      '10:00 AM',
      '12:00 PM',
      '2:00 PM',
      // Add more times as needed
    ];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Delivery Time'),
          content: Container(
            width: 70,
            height: 150,
            child: ListView.builder(
              itemCount: deliveryTimes.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(deliveryTimes[index]),
                  onTap: () {
                    String selectedTime = deliveryTimes[index];
                    print('Selected Time: $selectedTime');
                    Navigator.of(context).pop(); // Close the dialog
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            // You can keep the 'Select' button or customize it as needed
          ],
        );
      },
    );
  }
}
