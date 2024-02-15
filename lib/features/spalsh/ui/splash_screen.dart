import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height ;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
            width: double.infinity,
            height: screenHeight,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(1.27, 1.54),
                    end: Alignment(0, 0),
                    colors: [
                  Colors.green.shade200,
                  Color.fromARGB(255, 51, 51, 51)
                ])),
            child: Stack(
              children: [
                Positioned(
                    bottom: 150,
                    left: 230,
                    top: 95,
                    right: 0,
                    child:
                        Image.asset('assets/images/img_3d_food_icon_by.png')),
                Positioned(
                  bottom: 450,
                  left: 30,
                  top: 150,
                  right: 30,
                  child: GlassmorphicContainer(
                      width: 350,
                      height: 350,
                      borderRadius: 20,
                      blur: 4,
                      alignment: Alignment.bottomCenter,
                      border: 2,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color((0xFFFFFFFF)).withOpacity(0.1),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("FOODINI",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 60,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  )),
                              SizedBox(height: 9),
                              SizedBox(
                                  width: 265,
                                  child: Text(
                                      " Order, Eat, Enjoy Foodini Delivers Magic to Your Door.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      )))
                            ]),
                      )),
                ),
                Positioned(
                    bottom: 490,
                    left: 1,
                    top: 0,
                    right: 250,
                    child: Image.asset(
                        'assets/images/img_3d_food_icon_by_195x163.png')),
                Positioned(
                    bottom: 30,
                    left: 30,
                    top: 250,
                    right: 100,
                    child: Image.asset(
                        'assets/images/img_3d_food_icon_by_279x292.png')),
                Positioned(
                    bottom: 0,
                    left: 10,
                    top: 690,
                    right: 250,
                    child: Image.asset(
                        'assets/images/img_3d_food_icon_by_146x158.png')),
                Positioned(
                    bottom: 0,
                    left: 150,
                    top: 690,
                    right: 0,
                    child: Image.asset(
                        'assets/images/img_3d_food_icon_by_213x216.png')),
                Positioned(
                  top: 780,
              bottom: 30,
              left: 40,
              right: 40,
              child: GlassmorphicContainer(
                width: double.infinity,
                height: 56, // Define a fixed height for the button container
                borderRadius: 20,
                blur: 10,
                alignment: Alignment.bottomCenter,
                border: 0,
                linearGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.1),
                    const Color(0xFFFFFFFF).withOpacity(0.05),
                  ],
                  stops: const [
                    0.1,
                    1,
                  ],
                ),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.5),
                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "signUp");
                  },
                  child: const Text(
                    "ORDER NOW",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Color.fromRGBO(255, 255, 255, 0.7),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
              ],
            )),
    );
  }
}
