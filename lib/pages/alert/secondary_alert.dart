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
                image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
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