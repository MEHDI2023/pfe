
import 'package:flutter/material.dart';

import 'package:newburger/models/Compte/category/CategoryModel.dart';

import 'custom_category_item.dart';

class CustomCategoryList extends StatefulWidget {
  const CustomCategoryList({
    super.key,
  });

  @override
  State<CustomCategoryList> createState() => _CustomCategoryListState();
}

class _CustomCategoryListState extends State<CustomCategoryList> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 150,
            width: double.infinity,
            child:
                ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index; // Update the selected index on tap
                            });
                          },
                          child: CustomCategoryItem(
                            index: index,
                            category: CategoryModel(
                                id: "pizza",
                                name:"pizza" ,
                                description: "",
                                images: 'assets/images/img_pngimg_1.png'),
                            blur: selectedIndex == index ? 1500 : 1,
                            key: ValueKey('$index-${selectedIndex == index}'),
                            colors: selectedIndex == index
                                ? [
                                    Colors.white.withOpacity(0.2),
                                    Colors.white.withOpacity(0.2)
                                  ]
                                : [Colors.transparent, Colors.transparent],
                          ));
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: 5,
                  )
                ,
          ),
        );


  }
}
