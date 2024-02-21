import 'package:flutter/material.dart';
import 'package:newburger/home/home_screen.dart';
import 'features/screen_pub/ui/pubscreen.dart';
import 'features/sign_in_screen/ui/sign_in_screen.dart';
import 'features/sign_up/ui/sign_up_screen.dart';
import 'features/spalsh/ui/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Pub_Screen(),

    );
  }
}


