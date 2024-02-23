import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/shared/CUBIT/cubitHistoriq.dart';

import 'features/screen_pub/ui/pubscreen.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => HistoriqueCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Pub_Screen(), // You may want to replace this with your main screen
    );
  }
}

