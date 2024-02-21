import 'package:flutter/material.dart';

class CustomCategoryBar extends StatelessWidget {
  const CustomCategoryBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("Categories",
              style: TextStyle(
               fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
              Spacer(),
              Text("see all",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
