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
                  begin: const Alignment(1.27, 1.54),
                  end: const Alignment(0, 0),
                  colors: [
                Colors.green.shade200,
                const Color.fromARGB(255, 51, 51, 51)
              ])),
          child: const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Order details',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),

                CustomCartItem(
                    image: 'assets/images/img_klipartz_1.png',
                    title: 'Pizza Mixed',
                    quantity: 'x2'),
                CustomCartItem(
                    image: 'assets/images/img_klipartz_1.png',
                    title: 'Pizza Pepperoni',
                    quantity: 'x1'),
                CustomCartItem(
                    image: 'assets/images/img_klipartz_1.png',
                    title: 'Greek salad',
                    quantity: 'x2'),
                Spacer(),
                TotalWidget(total: '72 dt'),
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
