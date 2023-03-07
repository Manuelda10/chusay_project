import 'package:carousel_slider/carousel_slider.dart';
import 'package:chusay_project/pages/alert/secondary_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:chusay_project/pages/alert/first_alert.dart';
import 'package:chusay_project/pages/alert/third_alert.dart';



class AlertPrincipalScreen extends StatefulWidget {
  const AlertPrincipalScreen({super.key});

  @override
  State<AlertPrincipalScreen> createState() => _AlertPrincipalScreen();

}

class _AlertPrincipalScreen extends State<AlertPrincipalScreen>{
  final user = FirebaseAuth.instance.currentUser;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> screensList = [
    const FirstAlert(),
    const SecondaryAlert(),
    const ThirdAlert()
  ];

  // Realizar cambios en la 3era página para que entre en la pantalla
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Builder(
            builder: (context){
              final double height = MediaQuery.of(context).size.height - 100;
              return CarouselSlider(
                carouselController: _controller,
                items: screensList,
                options: CarouselOptions(
                  height: height,
                  viewportFraction: 1,
                  enlargeCenterPage: false,
                  aspectRatio: 2.0,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  initialPage: 1,
                  // autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
                ),
                );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: screensList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),  
        ],
      )
      
    );
  }   
}