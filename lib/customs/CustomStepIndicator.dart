
import 'package:flutter/material.dart';

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
          backgroundColor: isActive ? Colors.green : Colors.grey,
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
        color: isActive ? Colors.green : Colors.grey,
      ),
    );
  }
}
