import 'package:flutter/material.dart';

class SecondaryAlert extends StatelessWidget{
    const SecondaryAlert({Key ? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children:[
            const SizedBox(
                width: 100,
                height: 90,
            ),
            const Text(
              "Encuentra el mejor lugar para tu viaje", 
              style: TextStyle(color: Colors.black,
                fontSize: 30, 
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
                width: 100,
                height: 30,
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://images.unsplash.com/photo-1503220317375-aaad61436b1b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"), 
                fit:BoxFit.cover
                )
              ),
            ),
            const SizedBox(
                width: 100,
                height: 20,
            ),
            const Text(
              "Estamos felices de compartir nuestros mejores consejos sobre destinos donde puedas relajarte", 
              style: TextStyle(color: Colors.grey,
                fontSize: 16, 
                fontWeight: FontWeight.normal,
                ),
              textAlign: TextAlign.center,
            ),
          ],
        );
    }
}