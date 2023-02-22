import 'package:chusay_project/widgets/button/button.dart';
import 'package:flutter/material.dart';

class ThirdAlert extends StatefulWidget{
  const ThirdAlert({super.key});

  @override
  State<ThirdAlert> createState() => _ThirdAlert();
}

//Poner el on tap
class _ThirdAlert extends State<ThirdAlert>{

  double _opacity1 = 0.6;
  double _opacity2 = 0.6;
  double _opacity3 = 0.6;
  double _opacity4 = 0.6;

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
          height: 450,
          child: ListView(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity1 == 0.6){
                      _opacity1 = 1;
                    } else {
                      _opacity1 = 0.6;
                    }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 15, left: 15,right: 15),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity1,
                    image: const NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
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
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(_opacity2 == 0.6){
                              _opacity2 = 1;
                            } else {
                              _opacity2 = 0.6;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            opacity: _opacity2,
                            image: const NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
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
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            if(_opacity3 == 0.6){
                              _opacity3 = 1;
                            } else {
                              _opacity3 = 0.6;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            opacity: _opacity3,
                            image: const NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
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
                      )
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    if(_opacity4 == 0.6){
                      _opacity4 = 1;
                    } else {
                      _opacity4 = 0.6;
                    }
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    opacity: _opacity4,
                    image: const NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"), 
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
              ),
              const SizedBox(
                width: 100,
                height: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
                width: 100,
                height: 20,
              ),
        ButtonLogin(textButton: "Comencemos", onClick: (){})
      ],
    ); 
  }
}