import 'package:flutter/material.dart';

import '../../widgets/button/button.dart';
import '../../widgets/button/button_register.dart';
import '../alert/principal_alert.dart';
import '../recover/recover_password.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 100, height: 120),
            const Text(
              "Crea tu cuenta", 
              style: TextStyle(color: Colors.black,
                fontSize: 32, 
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 100, height: 20),
            TextFormField(  
              decoration: const InputDecoration(
                hintText: 'Usuario',
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFF167351),
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox( width: 100, height: 10),
            TextFormField(  
              decoration: const InputDecoration(
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFF167351),
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            const SizedBox(width: 100, height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                suffixIcon: Icon(
                  Icons.no_encryption_gmailerrorred_outlined,
                  color: Color(0xFF167351),
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Tienes que ingresar algún valor';
                }
                return null;
              },
            ),
            const SizedBox(width: 100, height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Confirmar contraseña',
                suffixIcon: Icon(
                  Icons.no_encryption_gmailerrorred_outlined,
                  color: Color(0xFF167351),
                  size: 30,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Tienes que ingresar algún valor';
                }
                return null;
              },
            ),
            const SizedBox(width: 100, height: 20),
            ButtonLogin(
              textButton: 'Registrarme', 
              onClick: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecoverPage())
                );
              }
            ),
            const SizedBox(width: 100, height: 20),
            const Text(
            "¿Ya tienes una cuenta? Inicia Sesión", 
            style: TextStyle(color: Colors.grey,
              fontSize: 16, 
              fontWeight: FontWeight.normal,
              ),
            textAlign: TextAlign.center,
            )
          ]
        ),
      ),
    );
  }

}