import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key ? key, required this.textButton, required this.onClick}) : super(key: key);

  final String textButton;
  final Function()? onClick;

  @override
  Widget build (BuildContext context){
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(250, 50)),
        //padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(left: 60, right:60, top: 15, bottom: 15)),
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
      onPressed: onClick,
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