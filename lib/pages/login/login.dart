import 'package:chusay_project/pages/alert/principal_alert.dart';
import 'package:chusay_project/pages/start/start.dart';
import 'package:chusay_project/widgets/button/button.dart';
import 'package:chusay_project/widgets/button/button_register.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';   
import 'package:firebase_auth/firebase_auth.dart';

import '../../main.dart';
import '../../widgets/utils/utils.dart';
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
      backgroundColor: const Color(0xFFF5F5F5),
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
              )
            ),
            const SizedBox(
              width: 100,
              height: 20,
            ),
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
      /*Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AlertPrincipalScreen()),
      );*/
      //Navigator.pop(context);
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(), 
        password: passwordController.text.trim()
      );
      print("Se logró la autentificación");
      

    } on FirebaseAuthException catch (e){
      print(e);
      Utils.showSnackBar(e.message);

    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
    
    
  }
}