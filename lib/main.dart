import 'package:flutter/material.dart';
import 'package:latkuis_124240105/login.dart'; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Kuis Mobile',
      theme: ThemeData(
      // Tema warna coklat 
        primaryColor: const Color(0xFF5D4037), 
        scaffoldBackgroundColor: const Color(0xFFFAF3E0), 
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5D4037),
          brightness: Brightness.light,
        ), 

        // App bar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF5D4037),  
          foregroundColor: Colors.white,        
          centerTitle: true,                    
          elevation: 2,
        ), 

        // Tombol button 
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8D6E63), 
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ), 

        // Text field 
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFF8D6E63),
              width: 2,
            ),
          ),
        ), 

        // Card 
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 3,
        ),

        useMaterial3: true, 
      ),
      
      debugShowCheckedModeBanner: false, 
      home: const LoginPage(),
    );
  }
}