import 'package:flutter/material.dart';
import 'package:pss_movil/pages/diapositivasWidget.dart';
import 'package:pss_movil/pages/splashWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Theme',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'Orbitron',
          textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
            displayMedium: TextStyle(fontSize: 24, color: Colors.black),
            bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
            ),
          ),
        ),

      home: SplashScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/diapos': (context) => OnboardingScreen(),
      },
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
