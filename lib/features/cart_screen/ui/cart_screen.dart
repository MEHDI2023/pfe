import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import '../../../customs/custom_cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: screenHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.green.shade200,
                Color.fromARGB(255, 51, 51, 51)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Order Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                // List of cart items
                Expanded(
                  child: ListView(
                    children: const [
                      CustomCartItem(
                        image: 'assets/images/img_klipartz_1.png',
                        title: 'Pizza Mixed',
                        quantity: 'x2',
                      ),
                      CustomCartItem(
                        image: 'assets/images/img_klipartz_1.png',
                        title: 'Pizza Pepperoni',
                        quantity: 'x1',
                      ),
                      CustomCartItem(
                        image: 'assets/images/img_klipartz_1.png',
                        title: 'Greek Salad',
                        quantity: 'x2',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Total widget with glass effect
                GlassContainer.clearGlass(
                  height: 60,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(30),
                  child: Center(
                    child: Text(
                      'Total : 50.00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TotalWidget extends StatelessWidget {
  final String total;

  const TotalWidget({
    Key? key,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          'Total : $total',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
