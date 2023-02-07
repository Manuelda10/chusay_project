import 'package:chusay_project/pages/start/start.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key ? key, required this.textButton}) : super(key: key);

  final String textButton;

  @override
  Widget build (BuildContext context){
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(left: 60, right:60, top: 15, bottom: 15)),
        backgroundColor:MaterialStateProperty.all<Color>(const Color(0xFF167351)),
        foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 183, 216, 243)),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)){
              return const Color.fromARGB(255, 162, 194, 181).withOpacity(0.1);
            }
              
            if (states.contains(MaterialState.focused) || states.contains(MaterialState.pressed)){
              return const Color.fromARGB(255, 162, 194, 181).withOpacity(0.1);
            }
            return null; // Defer to the widget's default.
          },
        ),
      ),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StartScreen())
        );
      },
      child: Text(
        textButton, 
        style: const TextStyle(color: Colors.white,
          fontSize: 16, 
          fontWeight: FontWeight.normal,
          ),
        textAlign: TextAlign.center,
      ),
    );
  }
}