import 'package:flutter/material.dart';
import 'package:chusay_project/widgets/button/button.dart';
import 'package:chusay_project/widgets/button/button_register.dart';


class ErrorPage extends StatefulWidget{
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPage();
}

class _ErrorPage extends State<ErrorPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 100,
            height: 60,
          ),
          Container(
            alignment: Alignment.center,
            child: const Icon(
              Icons.autorenew_outlined,
              color: Color(0xFF167351),
              size: 150.0,
            ),
          ),
          const Text(
            "Uuupss...", 
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
          const Text(
            "Algo salió mal, estamos haciendo lo posible para solucionarlo y debería estar en funcionamiento pronto.", 
            style: TextStyle(color: Colors.grey,
              fontSize: 16, 
              fontWeight: FontWeight.normal,
              ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
              width: 100,
              height: 30,
          ),
          ButtonLogin(
            textButton: "Intentar otra vez",
            onClick: () {},
          ),
          const SizedBox(
              width: 100,
              height: 15,
          ),
          ButtonRegister(
            textButton: "Atrás",
            onClick: (){
              Navigator.of(context).pop();
            },
          ),
          
        ],
      ),
    );
  }

}