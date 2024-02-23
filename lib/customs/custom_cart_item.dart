import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class CustomCartItem extends StatelessWidget {
  final String image;
  final String title;
  final String quantity;

  const CustomCartItem({
    Key? key,
    required this.image,
    required this.title,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          GlassContainer(

              width: 150,
              height: 150,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              blur:
                  15, // Augmentez cette valeur pour un effet de flou plus prononcé
              alignment: Alignment.bottomCenter,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 255, 255,
                      0.2), // Modifiez l'opacité pour un effet de verre différent
                  Color.fromRGBO(255, 255, 255,
                      0.05), // Modifiez l'opacité pour un effet de verre différent
                ],
                stops: [0.1, 1],
              ),
              borderGradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(
                      255, 255, 255, 0.5), // Couleur plus claire pour le bord
                  Color.fromRGBO(
                      255, 255, 255, 0.1), // Couleur plus foncée pour le bord
                ],
              ),
              child: Center(
                child: Image.asset(image,
                    width: 160,
                    height:
                        100),
              )), // Replace with your image assets or network images
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Spacer(),
          Text(
            quantity,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
                     Spacer(),
                     

           
        ],
      ),
    );
  }
}
