import 'package:flutter/material.dart';

import '../mode/mode_commande.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Container(
        
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(1.27, 1.54),
                  end: const Alignment(0, 0),
                  colors: [
                    Colors.green.shade200,
                    const Color.fromARGB(255, 51, 51, 51)
                  ])),
          child: Column(
        
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Rechercher...',
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                   border: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.white, width: 2.0),
                     borderRadius: BorderRadius.circular(25.0),
                   ),
                  ),
        
                  onChanged: (query) {

                  },
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 6.0,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
        
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        right: 5.0
                      ),
                      child:GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantOrderScreen(),));
                        },
                        child: Card(
                          
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              children: [
                                Image.asset("assets/images/img_3d_food_icon_by_166x139.png"
                                , width: 110.0,
                                height: 110.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(
                                  '- Précommande',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                  Text(
                                    'BOUTIQUE SAFA',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    '24 B RUE LEONARD \nDE VINCI 91090 LISSES',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.shopping_bag, color: Colors.orange),
                                      Icon(Icons.shopping_bag, color: Colors.orange),
                                      Icon(Icons.shopping_bag, color: Colors.orange),
                                      Icon(Icons.shopping_bag, color: Colors.orange),
                                      Icon(Icons.shopping_bag, color: Colors.orange),
                        
                                    ],
                                  ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
