import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
                    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
        height: 50,
        width: 320,
        child: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon:
                const Icon(IconlyLight.search, color: Colors.white),
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            hintTextDirection: TextDirection.ltr,
            hintText: "Search for food",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0), // White border with desired width
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                  color: Colors.white,
                  width:
                      2.0), // White border with desired width when the field is focused
            ),
            // If you want to apply the same style for other states like errorBorder, focusedErrorBorder, etc., you can do so here.
          ),
        ),
      ),
    ),
    const SizedBox(
      width: 10,
    ),
    const Icon(
      IconlyLight.filter,
      color: Colors.white,
    ), 
                    ],
                  );
  }
}
