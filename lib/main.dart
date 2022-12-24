import 'package:flutter/material.dart';
import 'package:movies_app/core/appcolor.dart';
import 'package:movies_app/movie/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            scaffoldBackgroundColor: AppColors.mainColor,
            appBarTheme: AppBarTheme(
              color: AppColors.mainColor,
              elevation: 0.0,
            )),
        home: const HomeScreen());
  }
}
