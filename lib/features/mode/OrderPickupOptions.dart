import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/CUBIT/order_cubit.dart';

class OrderPickupOptions extends StatefulWidget {
  final String selectedOption;
  final Function(String) onChanged;

  OrderPickupOptions(this.selectedOption, this.onChanged);

  @override
  State<OrderPickupOptions> createState() => _OrderPickupOptionsState();
}

class _OrderPickupOptionsState extends State<OrderPickupOptions> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.selectedOption;
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
          value: 'On-site',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('On-site', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile<String>(
          value: 'Takeaway',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('Takeaway', style: TextStyle(color: Colors.white)),
        ),
        RadioListTile<String>(
          value: 'Delivery',
          groupValue: _selectedOption,
          onChanged: (value) => _handleRadioValueChange(value),
          title: Text('Delivery', style: TextStyle(color: Colors.white)),
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
      if (value == 'On-site' || value == 'Takeaway' || value == 'Delivery') {
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
          title: Text('Select the delivery time'),
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
