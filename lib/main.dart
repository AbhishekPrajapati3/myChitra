import 'package:chitra_app/views/screens/category.dart';
import 'package:chitra_app/views/screens/homeScreen.dart';
import 'package:chitra_app/views/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
