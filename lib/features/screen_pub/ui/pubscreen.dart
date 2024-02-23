import 'package:flutter/material.dart';
import 'package:newburger/layout/home_layout.dart';

import '../../../customs/custom_button.dart';


class Pub_Screen extends StatelessWidget {
  const Pub_Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
                begin: const Alignment(1.27, 1.54),
                end: const Alignment(0, 0),
                colors: [
                  Colors.green.shade200,
                  const Color.fromARGB(255, 51, 51, 51)
                ])),
        child: Stack(
          children: [
            // Image covering the entire page
            Image.asset("assets/images/img_3d_food_icon_by_108x108.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Button aligned at the bottom
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(text: "To order",onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeLayout()),
                  );
                },),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
