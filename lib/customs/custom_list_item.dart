import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/customs/custom_order_item.dart';
import 'package:newburger/helpers/bloc/home_bloc.dart';
import 'package:newburger/helpers/bloc/home_state.dart';
import 'package:newburger/models/Compte/order_item/OrderItemModel.dart';
import 'package:newburger/models/Compte/order_item/ingredient_model.dart';


class CustomListItem extends StatelessWidget {
  CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:  GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 161,
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        physics:
            const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          // You need to return the GestureDetector
          return CustomOrderItem(
            index: index,
            orderItem: OrderItemModel
            (
              ingredients:[
                IngredientModel(ingredient: "tomate", id:"0", price: "3"),
                IngredientModel(ingredient: "olive", id:"1", price: "3"),
                IngredientModel(ingredient: "ton", id:"2", price: "3"),
                IngredientModel(ingredient: "hirssa", id:"3", price: "3"),
                IngredientModel(ingredient: "mayo", id:"4", price: "3"),


              ] ,
              category:"tacos",
              description: "ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
              id: "hhh",
              images: ["assets/images/img_kisspng_pizza_m.png"],
              name: "tacos",
              price: "10.00",

            ),
            blur: 5, // Set a reasonable blur value
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.white.withOpacity(0.2)
            ],
          );
        },
      ),
    );
  }
}
