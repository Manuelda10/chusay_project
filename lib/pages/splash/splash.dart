import 'package:flutter/material.dart';
import 'package:chusay_project/widgets/button/button.dart';
import 'package:chusay_project/pages/start/start.dart';

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
          padding: const EdgeInsets.only(top: 130),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/splash_image.jpg"), 
              fit:BoxFit.cover
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                PhysicalShape(
                  elevation: 5.0,
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  color: const Color(0xFFFFCF49),
                  child: const SizedBox(
                    height: 70.0,
                    width: 70.0,
                    child: Center(
                      child: Image(
                        image: AssetImage("images/icons/map.png"))
                    ),
                  ),
                ),
                const Text(
                  "Ch'usay", 
                  style: TextStyle(color: Colors.white,
                    fontSize: 50, 
                    fontWeight: FontWeight.bold,
                    ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Tiempo para una aventura", 
                  style: TextStyle(color: Colors.white,
                    fontSize: 16, 
                    fontWeight: FontWeight.normal,
                    ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  width: 100,
                  height: 320,
                ),
                ButtonLogin(
                  textButton: "Comencemos",
                  onClick: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StartScreen())
                    );
                  },
                ),
                const SizedBox(
                  width: 100,
                  height: 10,
                ),
                const Text(
                  "¿Ya tienes una cuenta? Inicia sesión", 
                  style: TextStyle(color: Colors.white,
                    fontSize: 14, 
                    fontWeight: FontWeight.normal,
                    ),
                  textAlign: TextAlign.center,
                  selectionColor: Color.fromARGB(255, 0, 0, 0),
                ),

              ]
            ),
          ),
        ),
      );
  }
}