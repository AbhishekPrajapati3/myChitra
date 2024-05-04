import 'package:chitra_app/views/screens/category.dart';
import 'package:chitra_app/views/screens/homeScreen.dart';
import 'package:chitra_app/views/screens/search_screen.dart';
import 'package:chitra_app/views/screens/splashScreen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        CategoryScreen.routeName:(context)=>CategoryScreen(),
       // SearchScreen.routeName:(context)=>SearchScreen(query: "india"),

      },
      home:SplashScreen(),
    );
  }
}
