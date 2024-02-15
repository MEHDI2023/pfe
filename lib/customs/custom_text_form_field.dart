import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Function? validator;
  final TextInputType? type;

  const CustomTextFormField({

    super.key, required this.labelText,
    required this.controller,
     this.validator,
    this.type
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 50, 
      width: 250,
      child: Center(
        child: TextFormField(



          validator:validator as String? Function(String?)?,
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.white),
            labelText: labelText,

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide:const  BorderSide(
                  color: Colors.white,
                  width:
                      1.0), // White border with desired width
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width:
                      2.0), // White border with desired width when the field is focused
            ),
            // If you want to apply the same style for other states like errorBorder, focusedErrorBorder, etc., you can do so here.
          ),
          keyboardType: type,
        ),
      ),
    );
  }
}
