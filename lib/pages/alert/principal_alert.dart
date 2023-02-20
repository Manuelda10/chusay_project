import 'package:chusay_project/pages/alert/secondary_alert.dart';
import 'package:flutter/material.dart';
import 'package:chusay_project/pages/alert/first_alert.dart';
import 'package:chusay_project/pages/alert/third_alert.dart';



class AlertPrincipalScreen extends StatefulWidget {
  const AlertPrincipalScreen({super.key});

  @override
  State<AlertPrincipalScreen> createState() => _AlertPrincipalScreen();

}

class _AlertPrincipalScreen extends State<AlertPrincipalScreen>{
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: SingleChildScrollView(
        child: ThirdAlert()
      ),
    );
  }   
}