import 'package:chusay_project/pages/alert/principal_alert.dart';
import 'package:chusay_project/pages/auth/auth_page.dart';
import 'package:chusay_project/pages/error/error.dart';
import 'package:chusay_project/pages/login/login.dart';
import 'package:chusay_project/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:chusay_project/widgets/button/button.dart';
import 'package:chusay_project/widgets/button/button_register.dart';

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
          padding: const EdgeInsets.only(top: 90),
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/start_image.jpg"), 
              fit:BoxFit.cover
              )
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Planifica tus viajes", 
                style: TextStyle(color: Colors.black,
                  fontSize: 32, 
                  fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  width: 100,
                  height: 5,
              ),
              const Text(
                "Conéctate con otros viajeros", 
                style: TextStyle(color: Colors.black,
                  fontSize: 16, 
                  fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  width: 100,
                  height: 450,
              ),
              ButtonLogin(
                textButton: "Continuar",
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthPage())
                  );
                },
              ),
              const SizedBox(
                  width: 100,
                  height: 15,
              ),
              /*ButtonRegister(
                textButton: "Regístrate",
                onClick: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthPage())
                  );
                },
              ),*/
            ],
          ),
        ),
      )
    );
  }
}