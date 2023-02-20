import 'package:flutter/material.dart';
import 'package:chusay_project/widgets/slider/slider.dart';

class FirstAlert extends StatelessWidget{
    const FirstAlert({Key ? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
                width: 100,
                height: 90,
            ),
            Text(
              "Inspírate para tu próximo viaje", 
              style: TextStyle(color: Colors.black,
                fontSize: 30, 
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
                width: 100,
                height: 30,
            ),
            CarouselSliderWelcome(),
            SizedBox(
                width: 100,
                height: 20,
            ),
            Text(
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