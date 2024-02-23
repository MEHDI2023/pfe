import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/CUBIT/order_cubit.dart';

class OrderPickupOptions extends StatefulWidget {
  final String selectedOption; // Removed 'late' keyword
  final Function(String) onChanged;

  OrderPickupOptions(this.selectedOption, this.onChanged);

  @override
  State<OrderPickupOptions> createState() => _OrderPickupOptionsState();
}

class _OrderPickupOptionsState extends State<OrderPickupOptions> {
  String? _selectedOption; // Private variable to manage state

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption; // Initialize with widget's value
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Pickup Options:',
          style: TextStyle(color: Colors.white),
        ),
        RadioListTile<String>(
          value: 'sur place',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('sur place', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile<String>(
          value: 'empoter',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('empoter', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile<String>(
          value: 'livrison',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('livrison', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  void _handleRadioValueChange(String? value) {
    if (value != null) {
      setState(() {
        _selectedOption = value;
      });
      widget.onChanged(value);
      if (value == 'sur place' || value == 'empoter' || value == 'livrison') {
        _showDeliveryTimePickerDialog(context);
      }
    }
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
