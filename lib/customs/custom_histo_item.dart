import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class CustomHistoItem extends StatelessWidget {
  final String name;
  final String? numCommande;
  final String discrptif;
  final String quantity;
  final String price;
  final String? date;

  const CustomHistoItem({
    Key? key,
    required this.quantity,
    required this.name,
    required this.discrptif,
    required this.price,
    this.date,
    this.numCommande,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget>[
          GlassContainer(
            width: 370,
            height: 120,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            blur: 15,
            alignment: Alignment.bottomCenter,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(123, 104, 238, 0.5),
                Color.fromRGBO(123, 104, 238, 0.2),
              ],
              stops: [0.1, 1],
            ),
            borderGradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(123, 104, 238, 0.8),
                Color.fromRGBO(123, 104, 238, 0.3),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        date!,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(width: 5,),
                          Text(discrptif,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        price,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        name,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),

                    ],
                  ),




                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
