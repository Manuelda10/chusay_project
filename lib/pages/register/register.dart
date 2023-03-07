import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/button/button.dart';
import '../../widgets/button/button_register.dart';
import '../../widgets/utils/utils.dart';
import '../alert/principal_alert.dart';
import '../recover/recover_password.dart';
import '../../main.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onClickedSignIn;

  const RegisterPage({
    Key? key,
    required this.onClickedSignIn
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage>{
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isHiddenPassword = true;

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
        child: Form(
          key: formKey,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(  
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>(const Color(0xFF167351)),
                      minimumSize: MaterialStateProperty.all(const Size(90, 50)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      )
                    ), // <-- ElevatedButton
                    onPressed: () {},
                    icon: const Icon(
                      Icons.g_mobiledata_rounded,
                      size: 35.0,
                    ),
                    label: Text('Google'),
                  ),
              
                  ElevatedButton.icon(  
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>(const Color(0xFF167351)),
                      minimumSize: MaterialStateProperty.all(const Size(90, 50)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      )
                    ), // <-- ElevatedButton
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook_outlined,
                      size: 24.0,
                    ),
                    label: Text('Facebook'),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
                height: 20,
              ),
              /*TextFormField(  
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
              ),*/
              const SizedBox( width: 100, height: 10),
              TextFormField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  //hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xFF167351),
                    size: 30,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) {
                  email != null && !EmailValidator.validate(email)
                    ? 'Ingresa un email válido'
                    : null;
                },
              ),
              const SizedBox(width: 100, height: 10),
              TextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.next,
              obscureText: isHiddenPassword,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                suffixIcon: InkWell(
                  onTap: () => setState(() {isHiddenPassword = !isHiddenPassword;}),
                  child: Icon(
                    isHiddenPassword == true
                      ? Icons.visibility
                      : Icons.visibility_off ,
                    color: const Color(0xFF167351),
                    size: 30,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length < 6
                ? 'Ingresar un mínimo de 6 caracteres'
                : null
            ),
              const SizedBox(width: 100, height: 10),
              TextFormField(
              textInputAction: TextInputAction.next,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Confrimar contraseña',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != passwordController.text.trim()
                ? 'Ingresa la misma contraseña'
                : null
              ),
              const SizedBox(width: 100, height: 20),
              ButtonLogin(
                textButton: 'Registrarme', 
                onClick: signUp
              ),
              const SizedBox(width: 100, height: 20),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey,
                    fontSize: 17, 
                    fontWeight: FontWeight.normal,
                  ),
                  text: "¿Ya tienes una cuenta? ",
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignIn,
                      text: "Inicia sesión",
                      style: const TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline
                      ),
                    )
                  ]
                )
              )
            ]
          ),
        ),
      ),
    );
  }


  Future signUp() async{
    final isValid = formKey.currentState!.validate();
    if(!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (context) => const Center(child: CircularProgressIndicator())
    );

    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(), 
        password: passwordController.text.trim()
      );
    } on FirebaseAuthException catch (e){
      print(e);
      Utils.showSnackBar(e.message);
    }

      
    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);

  }
}