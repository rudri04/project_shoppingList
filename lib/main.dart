import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shopping_list/Providers/CategoryProvider.dart';
import 'package:shopping_list/View/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>CategoryProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Groceries',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      home: const HomePage(),
    );
  }
}

