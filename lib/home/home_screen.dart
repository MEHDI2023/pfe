import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:newburger/customs/custom_app_bar.dart';
import 'package:newburger/customs/custom_app_bar_name.dart';
import 'package:newburger/customs/custom_category_bar.dart';
import 'package:newburger/customs/custom_search_bar.dart';
import '../customs/custom_category_list.dart';
import '../customs/custom_list_item.dart';
import '../features/profile/ui/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                mainAxisAlignment: MainAxisAlignment.end,
               iconButton: IconButton(
            icon: const Icon(
              IconlyLight.profile,
              color: Colors.white,
              size: 30,
            ),
            onPressed: ()
             {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),));
             },
          ),
              ),
              const CustomAppBarName(),
              const CustomSearchBar(), // This remains outside and won't scroll
              Expanded(
                // This will take the rest of the available space
                child: ListView(
                  children: [
                    const SizedBox(height: 5),
                    const CustomCategoryBar(),
                    const SizedBox(height: 10),
                    const CustomCategoryList(),
                    const SizedBox(height: 15),
                    CustomListItem(), // This should be a part of a builder if it represents a single item

                    // This should be a part of a builder if it represents a single item
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
