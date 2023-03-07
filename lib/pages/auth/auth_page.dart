import 'package:flutter/material.dart';  
import 'package:chusay_project/pages/login/login.dart';
import 'package:chusay_project/pages/register/register.dart';

class AuthPage extends StatefulWidget{
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPage();
}

class _AuthPage extends State<AuthPage>{
  bool isLogin = true;  

  @override
  Widget build(BuildContext context) =>
    isLogin 
      ? LoginPage( onClickedSignUp: toggle)
      : RegisterPage(onClickedSignIn: toggle);

  
  void toggle(){
    return setState(() => isLogin = !isLogin);
  }
}
