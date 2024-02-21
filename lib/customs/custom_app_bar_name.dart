import 'package:flutter/material.dart';

class CustomAppBarName extends StatelessWidget {
  const CustomAppBarName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
         children: 
              [
       Text("Hocus Pocus,\n It's Dinner Time", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
       SizedBox(width: 10,),
       Image.asset('assets/images/img_3d_food_icon_by_108x108.png', height: 150, width: 150,),
      
              ],),
    );
  }
}