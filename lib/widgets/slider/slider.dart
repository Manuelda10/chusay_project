import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWelcome extends StatelessWidget{
  const CarouselSliderWelcome ({Key ? key}) : super(key:key);
  
  @override
  Widget build (BuildContext context){
    return CarouselSlider(
      items: [
        Container(
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: const DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/2424395/pexels-photo-2424395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
            height: 300.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
      );
  }
}