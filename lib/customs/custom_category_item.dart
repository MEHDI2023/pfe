import 'package:flutter/material.dart';

import 'package:glass_kit/glass_kit.dart';

import '../models/Compte/category/CategoryModel.dart';

class CustomCategoryItem extends StatefulWidget {
  final double blur;
  final List<Color> colors;
  final int index;
  final CategoryModel category;

  const CustomCategoryItem({
    super.key, required this.blur, required this.colors, required this.index, required this.category,
  });

  @override
  State<CustomCategoryItem> createState() => _CustomCategoryItemState();
}

class _CustomCategoryItemState extends State<CustomCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      blur: widget.blur,
      gradient: LinearGradient(colors: widget.colors),


      height: 150,
      width: 120,
      borderRadius: BorderRadius.circular(20),

      alignment: Alignment.bottomCenter,
      borderGradient: LinearGradient(colors: [
        Colors.white.withOpacity(0.60),
        Colors.white.withOpacity(0.10),
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset("assets/images/img_kisspng_pizza_m.png"),
            ),
            Text(
              widget.category.name,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
