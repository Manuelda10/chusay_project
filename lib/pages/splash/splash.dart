import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splash_image.jpg"), 
              fit:BoxFit.cover
              )
            ),
            child: const Center(
              child: Text(
                "Ch'usay", 
                style: TextStyle(color: Colors.white,
                fontSize: 70, 
                fontWeight: FontWeight.bold
                ),
               ),
            ),
          ),
        ),
      );
  }
}