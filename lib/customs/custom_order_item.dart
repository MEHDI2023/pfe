import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:glassmorphism/glassmorphism.dart';

import 'package:iconly/iconly.dart';
import 'package:newburger/features/cart_screen/ui/cart_screen.dart';
import 'package:newburger/models/Compte/order_item/OrderItemModel.dart';

class CustomOrderItem extends StatelessWidget {
  final double blur;
  final List<Color> colors;
  final int index;
  final OrderItemModel orderItem;
  const CustomOrderItem({
    super.key,
    required this.blur,
    required this.colors,
    required this.index,
    required this.orderItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _showBottomSheet(context),
        child: Stack(children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.30),
                  Colors.white.withOpacity(0.02),
                ],
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      IconlyLight.heart,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderItem.name,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${orderItem.price} £",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 9,
            left: 80,
            child: Image.asset(
              'assets/images/img_kisspng_pizza_m.png', // Replace with your image URL
              fit: BoxFit.cover,
              height: 100,
              width: 100, // Set this to the desired height
            ),
          ),
        ]));
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc) {
        return GlassContainer(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.72,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          blur: 15,
          alignment: Alignment.bottomCenter,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 255, 255, 0.2),
              Color.fromRGBO(255, 255, 255, 0.05),
            ],
            stops: [0.1, 1],
          ),
          borderGradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 255, 255, 0.5),
              Color.fromRGBO(255, 255, 255, 0.1),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  // ... Autres widgets et configurations
                  child: Text(
                    "Hocus Pocus, It's Dinner Time",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GlassContainer(
                        // ... Autres configurations de GlassContainer
                        width: double.infinity,
                        height: 150,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
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
                            Color.fromRGBO(255, 255, 255,
                                0.5), // Couleur plus claire pour le bord
                            Color.fromRGBO(255, 255, 255,
                                0.1), // Couleur plus foncée pour le bord
                          ],
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/img_kisspng_pizza_m.png',
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        // ... Text widget pour le nom de l'article
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          orderItem.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 2),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: Colors.black.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 4, top: 4, bottom: 4),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Color.fromARGB(255, 231, 230, 230),
                                      ),
                                      child: const Icon(Icons.remove,
                                          color: Colors.green,
                                          size: 16,
                                          weight: 10),
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 5, top: 4, bottom: 4),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16,
                                        weight: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '${orderItem.price} €', // Assurez-vous que `orderItem.price` est défini
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'popines',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      const Text(
                        'Sauces',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => checkBoxListTitle(
                          title: orderItem.ingredients[index].ingredient,
                          price: orderItem.ingredients[index].price,
                        ),
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        itemCount: orderItem.ingredients.length,
                      ),
                      const Text(
                        'Extras',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => checkBoxListTitle(
                          title: orderItem.ingredients[index].ingredient,
                          price: orderItem.ingredients[index].price,
                        ),
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        itemCount: orderItem.ingredients.length,
                      ),
                      const Text(
                        'Extras',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => checkBoxListTitle(
                          title: orderItem.ingredients[index].ingredient,
                          price: orderItem.ingredients[index].price,
                        ),
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        itemCount: orderItem.ingredients.length,
                      ),
                      const SizedBox(height: 20),
                      GlassmorphicContainer(
                        width: double.infinity,
                        height:
                            56, // Define a fixed height for the button container
                        borderRadius: 20,
                        blur: 10,
                        alignment: Alignment.bottomCenter,
                        border: 3,
                        linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 157, 243, 173).withOpacity(0.5),
                            Color.fromARGB(255, 102, 100, 100).withOpacity(0.5),
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
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                            Color.fromARGB(255, 102, 100, 100).withOpacity(0.5),
                          ],
                        ),

                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartScreen(),
                                ));
                          },
                          child: const Text(
                            "Add to cart",
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
                    ],
                  ),
                ),
                // ... Autres widgets si nécessaire
              ],
            ),
          ),
        );
      },
    );
  }

  CheckboxListTile checkBoxListTitle(
      {required String title, required String price}) {
    return CheckboxListTile(
      checkColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      value: true,
      onChanged: (bool? value) {
        value = !value!;
      },
      secondary: Text(
        price,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
