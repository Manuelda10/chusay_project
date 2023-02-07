import 'package:flutter/material.dart';
import 'package:chusay_project/widgets/button/button.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreen();

}

class _StartScreen extends State<StartScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 80),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Planifica tus viajes", 
                style: TextStyle(color: Colors.black,
                  fontSize: 32, 
                  fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: 100,
                  height: 5,
              ),
              Text(
                "Conéctate con otros viajeros", 
                style: TextStyle(color: Colors.black,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: 100,
                  height: 400,
              ),
              ButtonLogin(
                textButton: "Iniciar Sesión",
              ),
              SizedBox(
                  width: 100,
                  height: 15,
              ),
              ButtonLogin(
                textButton: "Regístrate"
              ),
            ],
          ),
        ),
      )
    );
  }
}