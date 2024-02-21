import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

import 'custom_app_bar_name.dart';

class CustomAppBar extends StatelessWidget {
  final IconButton iconButton;
  final MainAxisAlignment mainAxisAlignment;
  CustomAppBar({
    super.key,  required this.iconButton, required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment:mainAxisAlignment,
        children: [
          this.iconButton,
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
