import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/CUBIT/order_cubit.dart';

class OrderPickupOptions extends StatelessWidget {
  late final String selectedOption;
  final Function(String) onChanged;

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

          value: 'sur place',
          groupValue: selectedOption,
          onChanged: (value) {
            if (value == 'sur place') {
              _showDeliveryTimePickerDialog(context);
            }




          },
          title: Text('sur place', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile(
          value: 'empoter',
          groupValue: selectedOption,
          onChanged: (value) {
            if (value == 'empoter') {
              _showDeliveryTimePickerDialog(context);

            }


          },
          title: Text('empoter', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile(
          value: 'livrison',
          groupValue: selectedOption,
          onChanged: (value) {
            if (value == 'livrison') {
              _showDeliveryTimePickerDialog(context);

            }


          },
          title: Text('livrison', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
  void _showDeliveryTimePickerDialog(BuildContext context) async {
    List<String> deliveryTimes = [
      '10:00 AM',
      '12:00 PM',
      '2:00 PM',
      // Ajoutez plus de temps si nécessaire
    ];

    String? selectedTime = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sélectionnez l\'heure de livraison'),
          content: Container(
            width: double.maxFinite,
            height: 190.0,
            child: ListView.builder(
              itemCount: deliveryTimes.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(deliveryTimes[index]),
                  onTap: () {
                    Navigator.of(context).pop(deliveryTimes[index]);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    if (selectedTime != null) {
      context.read<OrderCubit>().selectDeliveryTime(selectedTime);
    }
  }
}

