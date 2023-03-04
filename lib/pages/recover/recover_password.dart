import 'package:flutter/material.dart';

import '../../widgets/button/button.dart';

class RecoverPage extends StatefulWidget{
  const RecoverPage({super.key});

  @override
  State<RecoverPage> createState() => _RecoverPage(); 
}

class _RecoverPage extends State<RecoverPage>{
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
            Container(
              alignment: Alignment.center,
              child: const Icon(
                Icons.lock_open,
                color: Color(0xFF167351),
                size: 150.0,
              ),
            ),
            const SizedBox(
              width: 100,
              height: 50,
            ),
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
            const SizedBox(width: 100, height: 20),
            ButtonLogin(
              textButton: 'Mandar correo', 
              onClick: (){}
            ),
          ]
        ),
      ),
    );
  }
}