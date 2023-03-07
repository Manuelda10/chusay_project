import 'package:chusay_project/pages/alert/principal_alert.dart';
import 'package:chusay_project/widgets/button/button.dart';
import 'package:chusay_project/widgets/button/button_register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';   
import 'package:firebase_auth/firebase_auth.dart';

import '../../main.dart';
import '../auth/auth_page.dart';
  
class LoginPage extends StatefulWidget{
  final VoidCallback onClickedSignUp;

  const LoginPage({
    Key? key,
    required this.onClickedSignUp
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 100,
              height: 150,
            ),
            const Text(
              "Iniciar Sesión", 
              style: TextStyle(color: Colors.black,
                fontSize: 32, 
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 100,
              height: 20,
            ),
            TextFormField(  
              controller: emailController,
              textInputAction: TextInputAction.next,
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
            const SizedBox(
              width: 100,
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.next,
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
            const SizedBox(
              width: 100,
              height: 20,
            ),
            ButtonLogin(
              textButton: 'Ingresar', 
              onClick: signIn
            ),
            const SizedBox(
              width: 100,
              height: 20,
            ),
            const Text(
            "¿No tienes una cuenta?", 
            style: TextStyle(color: Colors.grey,
              fontSize: 16, 
              fontWeight: FontWeight.normal,
              ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 100,
              height: 20,
            ),
            ButtonRegister(textButton: 'Regístrate', onClick: widget.onClickedSignUp)
          ],
        ),
      ),
    );
  }

  Future signIn() async{

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator())
    );
    
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(), 
        password: passwordController.text.trim()
      );
    } on FirebaseAuthException catch (e){
      print(e);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
    
    
  }
}