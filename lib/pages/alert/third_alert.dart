import 'package:chusay_project/widgets/button/button.dart';
import 'package:flutter/material.dart';

//Corregir esta huevada
class ThirdAlert extends StatelessWidget{
  const ThirdAlert({Key ? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: 100,
          height: 90,
        ),
        const Text(
          "Selecciona tus gustos", 
          style: TextStyle(color: Colors.black,
            fontSize: 30, 
            fontWeight: FontWeight.bold,
            ),
          textAlign: TextAlign.center,
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            opacity: 0.6,
            image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
            fit:BoxFit.cover
            )
          ),
          child: const Text(
            "Playa", 
            style: TextStyle(color: Colors.white,
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    opacity: 0.6,
                    image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Senderismo", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    opacity: 0.6,
                    image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
                    fit:BoxFit.cover
                    )
                  ),
                  child: const Text(
                    "Escalada", 
                    style: TextStyle(color: Colors.white,
                      fontSize: 24, 
                      fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          alignment: Alignment.center,
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          image: const DecorationImage(
            opacity: 0.6,
            image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
            fit:BoxFit.cover
            )
          ),
          child: const Text(
            "Extremo", 
            style: TextStyle(color: Colors.white,
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              ),
            textAlign: TextAlign.center,
          ),
        ),
        /*Row(
          children: [
            Container()
          ],
        ),
        Row(
          children: [
            Container(),
            Container()
          ],
        )*/
        const SizedBox(
          width: 100,
          height: 20,
        ),
        ButtonLogin(textButton: "Comencemos", onClick: (){})
      ],
    ); 
  }
}