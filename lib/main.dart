import 'package:flutter/material.dart';
import 'package:sobha_azkar/screens/about_screen.dart';
import 'package:sobha_azkar/screens/home_screen.dart';
import 'package:sobha_azkar/screens/launch_screen.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //erorr
      theme: ThemeData(
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal
        )
      ),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context)=>Launchscreen(),
        '/home_screen':(context)=>HomeScreen(),
        '/about_screen':(context)=>AboutScreen()
      },
    );
  }
}




